<%@page import="com.bad.FetchData"%>
<%@ page import = "com.bad.InsertData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body bgcolor = "cyan">
<jsp:useBean id="insert" class="com.bad.InsertData" />
<jsp:useBean id="fetch" class="com.bad.FetchData" />
	<%
	String name = request.getParameter("name");
	int serial_no = Integer.parseInt(request.getParameter("serial_no"));
	
	out.println("Got your info");
	
	InsertData id = new InsertData();
	id.insertRecords(name,serial_no);
	
	FetchData data = new FetchData();
	java.util.List<String> list=data.getDBNames();
	
	out.println(list);
	%>
	
	
</body>
</html>




