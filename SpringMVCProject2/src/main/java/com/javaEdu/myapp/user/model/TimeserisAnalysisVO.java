package com.javaEdu.myapp.user.model;

public class TimeserisAnalysisVO {

	private int analysis_year;
	private String graph_type;
	private double trading_amount;
	private String trading_month;
	
	public int getAnalysis_year() {
		return analysis_year;
	}
	public void setAnalysis_year(int analysis_year) {
		this.analysis_year = analysis_year;
	}
	public String getGraph_type() {
		return graph_type;
	}
	public void setGraph_type(String graph_type) {
		this.graph_type = graph_type;
	}
	
	public double getTrading_amount() {
		return trading_amount;
	}
	public void setTrading_amount(double trading_amount) {
		this.trading_amount = trading_amount;
	}
	public String getTrading_month() {
		return trading_month;
	}
	public void setTrading_month(String trading_month) {
		this.trading_month = trading_month;
	}
	@Override
	public String toString() {
		return "TimeserisAnalysisVO [analysis_year=" + analysis_year + ", graph_type=" + graph_type + ", trading_amount="
				+ trading_amount + ", trading_Month=" + trading_month + "]";
	}
	
	
}
