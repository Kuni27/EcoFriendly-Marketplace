package com.model;

public class Cart {

	private String cartId;
	private String productId;
	private String amazonIFrames;
	private int quantity;
	private String userId;
	/**
	 * @return the cartId
	 */
	public String getCartId() {
		return cartId;
	}
	/**
	 * @param cartId the cartId to set
	 */
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	/**
	 * @return the productId
	 */
	public String getProductId() {
		return productId;
	}
	/**
	 * @param productId the productId to set
	 */
	public void setProductId(String productId) {
		this.productId = productId;
	}
	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
}
