package com.controller;
import java.sql.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.service.CartService;

@Component
public class CartController {
	public static Connection getCon() {
		
		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver"); 
			Connection con = DriverManager.getConnection("jdbc:db2://dashdb-txn-sbox-yp-dal09-08.services.dal.bluemix.net:50000/BLUDB", "wmg83988", "mqn1s97d+ctq14zf");
			System.out.println(con);
			return con;
		
		}
		 catch (Exception e) {
			 System.out.println(e);
			 return null;
		 }
	}
	
	

	
}
