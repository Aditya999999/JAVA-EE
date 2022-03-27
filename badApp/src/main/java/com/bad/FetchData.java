package com.bad;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FetchData {
	
	public List<String> getDBNames() throws SQLException {
		Connection con=null;
		List<String>  nameList= new ArrayList<>();
		try {
			
			con=DBConnection.getConnection();
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from test");  
			while(rs.next()) 
			{
				String name = rs.getString(1);
			//System.out.println(name+"  "+rs.getInt(2)); 
			nameList.add(name);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
			catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		
		  catch(Exception exp)
		{
			  exp.printStackTrace();
		}
		
		finally {
			con.close();
		}
		return nameList;
		}

}
