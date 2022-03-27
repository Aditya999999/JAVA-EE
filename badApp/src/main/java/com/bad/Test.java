package com.bad;

import java.util.List;

public class Test {
	
	public static void main(String[] args) throws Exception {
		FetchData data = new FetchData();
		InsertData insData = new InsertData();
		insData.insertRecords("Golu", 8);
		List<String> ll=data.getDBNames();
		
		System.out.println(ll);
		
		
		
	}

}
