package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.User;

@Repository
public class UserDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate= jdbcTemplate;
	}
		
	public User addUser(User user) {
		
		final User userToInsert = user;
		System.out.println("add user");
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String insertQuery = "INSERT INTO USER (email, fname, lname, userpwd) VALUES (?,?,?,?)";
				PreparedStatement stmt = con.prepareStatement(insertQuery);
				stmt.setString(1, userToInsert.getEmail());
				stmt.setString(2, userToInsert.getFname());
				stmt.setString(3, userToInsert.getLname());
				stmt.setString(4, userToInsert.getUserpwd());
				return stmt;
			}

		});
		
//		user.setUserid(keyHolder.getKey().longValue());
		return user;
		
	}
	
	public Cart addCart(Cart cart) {
		
		final Cart addToCart = cart;
		
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String insertQuery = "INSERT INTO HCART (user_id, amazon_id, quantity) VALUES (?,?,?)";
				PreparedStatement stmt = con.prepareStatement(insertQuery);
				//stmt.setString(1, addToCart.getCartId());
				stmt.setString(1, addToCart.getUserId());
				stmt.setString(2, addToCart.getAmazonIFrames());
				stmt.setString(3, addToCart.getQuantity());
				return stmt;
			}
			
			
			
			

		});
		
//		user.setUserid(keyHolder.getKey().longValue());
		return cart;
		
	}
	
	
}
