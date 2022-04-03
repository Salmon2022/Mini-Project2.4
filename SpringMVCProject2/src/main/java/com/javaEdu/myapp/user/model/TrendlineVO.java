package com.javaEdu.myapp.user.model;

public class TrendlineVO {

	private int trend_year;
	private int x_value;
	private int y_value;
	
	public int getTrend_year() {
		return trend_year;
	}
	public void setTrend_year(int trend_year) {
		this.trend_year = trend_year;
	}
	public int getX_value() {
		return x_value;
	}
	public void setX_value(int x_value) {
		this.x_value = x_value;
	}
	public int getY_value() {
		return y_value;
	}
	public void setY_value(int y_value) {
		this.y_value = y_value;
	}
	@Override
	public String toString() {
		return "TrendlineVO [trend_year=" + trend_year + ", x_value=" + x_value + ", y_value=" + y_value + "]";
	}
	
	
}
