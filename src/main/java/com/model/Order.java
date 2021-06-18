package com.model;

public class Order {
  
	private String orderId;
	private String userId;
	private String greenId;
	private String amazonIFrames;
	/**
	 * @return the orderId
	 */
	public String getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	/**
	 * @return the greenId
	 */
	public String getGreenId() {
		return greenId;
	}
	/**
	 * @param greenId the greenId to set
	 */
	public void setGreenId(String greenId) {
		this.greenId = greenId;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the amazonIFrames
	 */
	public String getAmazonIFrames() {
		return amazonIFrames;
	}
	/**
	 * @param amazonIFrames the amazonIFrames to set
	 */
	public void setAmazonIFrames(String amazonIFrames) {
		this.amazonIFrames = amazonIFrames;
	}
	
}
