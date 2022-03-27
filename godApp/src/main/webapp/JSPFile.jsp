<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="java.sql.*" %>
</head>
<body>

</body>
<form method="post">

<table border="5">
<tr>
<td>NAME</td>
<td>ID</td>
</tr>
<%
	String name = request.getParameter("name");
	int ID = Integer.parseInt(request.getParameter("id"));
	
	out.println("Got your info");
	%>
<%
try
{

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/adi";
String username="aditya";
String password="Admin@123";
String query="select * from test";
Connection conn=DriverManager.getConnection(url,username,password);
PreparedStatement psmt = conn.prepareStatement("insert into test values (?,?)");
psmt.setString(1,name);
psmt.setInt(2, ID); 
psmt.execute();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getString("NAME") %><td><%=rs.getInt("ID") %></td></td></tr>
    <%-- <tr><td><%=rs.getInt("ID") %></td></tr> --%>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>

</form>
</html>