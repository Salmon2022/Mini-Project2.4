package com.javaEdu.myapp.user.model;

public class CompareAnalysis1VO {
	
	private int expenditure_year;
	private int income_lv;
	private double meat_exp;
	private double seafood_exp;
	private double diary_exp;
	private double breadnricecake_exp;
	private double noodles_exp;
	private double powder_exp;
	private double tea_exp;
	private double alcohol_exp;

	public int getExpenditure_year() {
		return expenditure_year;
	}
	public void setExpenditure_year(int expenditure_year) {
		this.expenditure_year = expenditure_year;
	}
	public int getIncome_lv() {
		return income_lv;
	}
	public void setIncome_lv(int income_lv) {
		this.income_lv = income_lv;
	}
	public double getMeat_exp() {
		return meat_exp;
	}
	public void setMeat_exp(double meat_exp) {
		this.meat_exp = meat_exp;
	}
	public double getSeafood_exp() {
		return seafood_exp;
	}
	public void setSeafood_exp(double seafood_exp) {
		this.seafood_exp = seafood_exp;
	}
	public double getDiary_exp() {
		return diary_exp;
	}
	public void setDiary_exp(double diary_exp) {
		this.diary_exp = diary_exp;
	}
	public double getBreadnricecake_exp() {
		return breadnricecake_exp;
	}
	public void setBreadnricecake_exp(double breadnricecake_exp) {
		this.breadnricecake_exp = breadnricecake_exp;
	}
	public double getNoodles_exp() {
		return noodles_exp;
	}
	public void setNoodles_exp(double noodles_exp) {
		this.noodles_exp = noodles_exp;
	}
	public double getPowder_exp() {
		return powder_exp;
	}
	public void setPowder_exp(double powder_exp) {
		this.powder_exp = powder_exp;
	}
	public double getTea_exp() {
		return tea_exp;
	}
	public void setTea_exp(double tea_exp) {
		this.tea_exp = tea_exp;
	}
	public double getAlcohol_exp() {
		return alcohol_exp;
	}
	public void setAlcohol_exp(double alcohol_exp) {
		this.alcohol_exp = alcohol_exp;
	}
	@Override
	public String toString() {
		return "CompareAnalysis1VO [expenditure_year=" + expenditure_year + ", income_lv=" + income_lv + ", meat_exp="
				+ meat_exp + ", seafood_exp=" + seafood_exp + ", diary_exp=" + diary_exp + ", breadnricecake_exp="
				+ breadnricecake_exp + ", noodles_exp=" + noodles_exp + ", powder_exp=" + powder_exp + ", tea_exp=" + tea_exp
				+ ", alcohol_exp=" + alcohol_exp + "]";
	}
	
}
