def coupang_crawler(base_info):
    import requests
    import bs4
    import time
    import random

    all_data_list=[]
    for pn in base_info["pages"]:
        url = base_info["url"].format(page_number=pn)
        res = requests.get(url=url, headers=base_info["my_headers"])

        soup=bs4.BeautifulSoup(res.text)

        div_elements =soup.select("dd.descriptions > div.name")
        for e in div_elements:
            div_elements = e
            data_list=[]
            data_list.append(div_elements.text.strip())
            all_data_list.append(data_list)
        time.sleep(1)
    return all_data_list


def extract_nouns(data_list, base_info):
    import pandas as pd
    from konlpy.tag import Twitter 
    from collections import Counter
    
    # 임시 저장용
    df = pd.DataFrame(data_list)
    file_name = 'wordtext{table_type}.txt'.format(table_type=base_info["table_type"])
    df.to_csv(file_name, index=False)
    
    # 저장된  raw 데이터 읽어오기
    file = open(file_name, 'r', encoding="UTF-8")
    lists = file.readlines()
    file.close()
    
    twitter = Twitter() 
    morphs = [] 

    for sentence in lists: 
        morphs.append(twitter.pos(sentence)) 
    print(morphs[:3])
    
    local_noun_list=[] 
    for sentence in morphs : 
        for word, tag in sentence : 
            if tag in ['Noun']:
                # 불용어와 겹치는지 확인하는 플래그
                flag = True
                for stopword in base_info["stopwords"]["noun"]:
                    # if ("팩" not in word)and("산" not in word)and("것" not in word)and("냉동" not in word)and("개" not in word)and("냉장" not in word)and("용" not in word)and ("내" not in word)and ("나" not in word)and ("수"not in word) and("게"not in word)and("말"not in word): 
                    # 불용어가 하나라도 있다면 플래그를 거짓으로 세팅
                    if stopword in word:
                        flag = False
                        
                if flag:  # 발견된 불용어가 하나도 없을때 플래그가 참. 이 경우에만 noun_list에 추가함.
                    local_noun_list.append(word)
             

    print(local_noun_list[:3])
    return local_noun_list

def insert_wordlist(table_type, wordlist):

    import cx_Oracle
    import os
    LOCATION = r"C:\instatclient_21_3"
    os.environ["PATH"]=LOCATION+";"+os.environ["PATH"] #환경변수 등록
    connection = cx_Oracle.connect("board", "1111","localhost:1521/xe")
    cursor = connection.cursor()
    if table_type == 1:
        sql = "SELECT count(*) count FROM user_tables where table_name = 'WORDLIST'"
        rs = cursor.execute(sql)
        if rs:
            print('wordlist table exists!')
        else:
            sql=f"CREATE TABLE wordlist (word_no NUMBER Not null, word_list VARCHAR2(100))"
            cursor.execute(sql)
            print(sql)
            
    # 테이블타입마다 먼저 저장된 레코드를 삭제
    sql = f"delete from wordlist where word_no = {table_type}"
    cursor.execute(sql)
    
    ## 레코드를 한꺼번에 넣기 위한 sql 문 만들기
    # sql = f"INSERT ALL \n"
    # for word in wordlist:
    #     sql = sql + f"INTO wordlist (word_no, word_list) VALUES ({table_type}, '{word}')\n"
    # sql = sql + "SELECT 1 FROM DUAL" 
    
    fw = open(f'wordList{table_type}.sql','w')
    # 레코드 하나씩 저장
    for word in wordlist:
        sql = f"INSERT INTO wordlist (word_no, word_list) VALUES ({table_type}, '{word}')"
        print(sql)
        cursor.execute(sql)
        # save to file
        fw.write(sql)
    fw.close()
    
    cursor.close()
    connection.commit()
    connection.close()

    

# %matplotlib inline 

def draw_wordcloud(noun_adj_adv_list):
    from collections import Counter
    import matplotlib.pyplot as plt 
    import nltk 
    from nltk.corpus import stopwords

    import matplotlib 
    from matplotlib import rc
    rc('font', family='NanumBarunGothic')

    from wordcloud import WordCloud

    wordcloud = WordCloud(
        font_path = './font/NanumBarunGothic.ttf',    # 맥에선 한글폰트 설정 잘해야함.
        background_color='white',                             # 배경 색깔 정하기
        colormap = 'Accent_r',                                # 폰트 색깔 정하기
        width = 800,
        height = 800
    )

    count = Counter(noun_adj_adv_list)
    words = dict(count.most_common())
    wordcloud_words = wordcloud.generate_from_frequencies(words)

    array = wordcloud.to_array()
    print(type(array)) # numpy.ndarray
    print(array.shape) # (800, 800, 3)

    fig = plt.figure(figsize=(10, 10))
    plt.imshow(array, interpolation="bilinear")
    plt.axis('off')
    plt.show()
    fig.savefig('business_anlytics_worldcloud.png')