<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<body>

	<div id="body" style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner.png">
		</div>
		<style type="text/css">
.scroll {
	background-color: #e2e9d7;
	overflow: auto;
	float: left;
	width: 1300px;
	height: 800px;
}
</style>

		<div id="r" class="scroll">
			<button type="button" onclick="location.href='Home.jsp'">
				<b>Inapoi</b>
			</button>
			<table align="center">
				<tr>
					<td><button type="button" onclick="location.href='2.jsp'">
							<b>Cauta Spectacole din cadrul unui Teatru</b>
						</button></td>
						<td><button type="button" onclick="location.href='3.jsp'">
							<b>Cauta Spectacole in functie de Teatru si Data</b>
						</button></td>
				
				<td><button type="button" onclick="location.href='Rezervare.jsp'">
							<b>Rezervare</b>
						</button></td>
				</tr>
				
				<%
				String urlBazaDate = "jdbc:mysql://localhost/teatru";
				String user1 = "root";
				String password1 = "";

				try {
					Class.forName("com.mysql.jdbc.Driver");

				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			%>
				<h2 align="center">Programul Spectacolelor</h2>
				<table align="center" cellpadding="5" cellspacing="3" border="1" style="margin-top:10px;">

						<tr>
						<td>Id</td>
						<td>Nume Spectacol</td>
						<td>Autor</td>
						<td>Regizor</td>
						<td>Teatru</td>
						</tr>
					<%
				
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM spectacol");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString("Id")%></td>
						<td><%=rs.getString("Nume")%></td>
						<td><%=rs.getString("Autor")%></td>
						<td><%=rs.getString("Regizor")%></td>
						<td><%=rs.getString("Teatru")%></td>
					</tr>
					
					<%} %>
					<table align="center" cellpadding="7" cellspacing="3" border="1" style="margin-top:10px;">

					<tr>
						<td>Id</td>
						<td>Ziua</td>
						<td>DataInceput</td>
						<td>DataSfarsit</td>
						<td>Ora</td>
						<td>Durata</td>
						<td>Bilete</td>
						
					</tr>
					<%
						
						ResultSet rs1 = s.executeQuery("SELECT * FROM stagiune");
						while (rs1.next()) {
					%>
					<tr>
						<td><%=rs1.getString("Id")%></td>
						<td><%=rs1.getString("Ziua")%></td>
						<td><%=rs1.getString("DataInceput")%></td>
						<td><%=rs1.getString("DataSfarsit")%></td>
						<td><%=rs1.getString("Ora")%></td>
						<td><%=rs1.getString("Durata")%></td>
						<td><%=rs1.getString("Bilete")%></td>


					</tr>
					<%}
						}
					catch (Exception e) {
						e.printStackTrace();
					}
					%>
				</table>
			</table>


		</div>
	</div>
	
</body>
</html>