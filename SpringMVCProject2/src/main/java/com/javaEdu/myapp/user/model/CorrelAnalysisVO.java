package com.javaEdu.myapp.user.model;

public class CorrelAnalysisVO {
	
	private int analysis_year;
	private String correlation_pair;
	private double correlation;
	
	public int getAnalysis_year() {
		return analysis_year;
	}
	public void setAnalysis_year(int analysis_year) {
		this.analysis_year = analysis_year;
	}
	public String getCorrelation_pair() {
		return correlation_pair;
	}
	public void setCorrelation_pair(String correlation_pair) {
		this.correlation_pair = correlation_pair;
	}
	public double getCorrelation() {
		return correlation;
	}
	public void setCorrelation(double correlation) {
		this.correlation = correlation;
	}
	
	@Override
	public String toString() {
		return "CorrelAnalysisVO [analysis_year=" + analysis_year + ", correlation_pair=" + correlation_pair
				+ ", correlation=" + correlation + "]";
	}
}
