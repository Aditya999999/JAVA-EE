package com.bad;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertData {
	
	public static void  insertRecords(String a, Integer b) throws ClassNotFoundException, SQLException {
		
		Connection con = DBConnection.getConnection();
		
		PreparedStatement psmt = con.prepareStatement("insert into test values (?,?)");
		
		psmt.setString(1, a);
		psmt.setInt(2, b);
		
		psmt.execute();
		System.out.println("Record inserted");
		
		con.close();
		
	}

}
