package com.javaEdu.myapp.user.model;

public class CompareAnalysis3VO {
 private int purchasechange_year;
 private int income_lv;
 private double no_change_compared_to_1year_ago;
 private double very_decrease;
 private double very_increase;
 private double little_decrease;
 private double little_increase;
 
public int getPurchasechange_year() {
	return purchasechange_year;
}
public void setPurchasechange_year(int purchasechange_year) {
	this.purchasechange_year = purchasechange_year;
}
public int getIncome_lv() {
	return income_lv;
}
public void setIncome_lv(int income_lv) {
	this.income_lv = income_lv;
}
public double getNo_change_compared_to_1year_ago() {
	return no_change_compared_to_1year_ago;
}
public void setNo_change_compared_to_1year_ago(double no_change_compared_to_1year_ago) {
	this.no_change_compared_to_1year_ago = no_change_compared_to_1year_ago;
}
public double getVery_decrease() {
	return very_decrease;
}
public void setVery_decrease(double very_decrease) {
	this.very_decrease = very_decrease;
}
public double getVery_increase() {
	return very_increase;
}
public void setVery_increase(double very_increase) {
	this.very_increase = very_increase;
}
public double getLittle_decrease() {
	return little_decrease;
}
public void setLittle_decrease(double little_decrease) {
	this.little_decrease = little_decrease;
}
public double getLittle_increase() {
	return little_increase;
}
public void setLittle_increase(double little_increase) {
	this.little_increase = little_increase;
}
@Override
public String toString() {
	return "CompareAnalysis3VO [purchasechange_year=" + purchasechange_year + ", income_lv=" + income_lv
			+ ", no_change_compared_to_1year_ago=" + no_change_compared_to_1year_ago + ", very_decrease=" + very_decrease
			+ ", very_increase=" + very_increase + ", little_decrease=" + little_decrease + ", little_increase="
			+ little_increase + "]";
}
 
 
}
