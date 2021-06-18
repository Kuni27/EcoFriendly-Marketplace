//package com.service;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.PreparedStatementCreator;
//
//import com.model.Cart;
//
//public class CartService {
//	@Autowired
//	JdbcTemplate jdbcTemplate;
//
//	public JdbcTemplate getJdbcTemplate() {
//		return jdbcTemplate;
//	}
//
//	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
//		this.jdbcTemplate = jdbcTemplate;
//	}
//
//	public Cart addCart(Cart cart) {
//
//		final Cart addToCart = cart;
//		System.out.println("Adding to cart");
//
//		jdbcTemplate.update(new PreparedStatementCreator() {
//			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
//				String insertQuery = "INSERT INTO CART (cartid, productid, amazoniframe, quantity) VALUES (?,?,?,?)";
//				PreparedStatement stmt = con.prepareStatement(insertQuery);
//				stmt.setString(1, "2");
//				stmt.setString(2, addToCart.getUserId());
//				stmt.setString(3, addToCart.getAmazonIFrames());
//				stmt.setInt(4, 1);
//				return stmt;
//			}
//
//		});
//
////		user.setUserid(keyHolder.getKey().longValue());
//		return cart;
//
//	}
//
//}
