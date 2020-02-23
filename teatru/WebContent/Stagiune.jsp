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
<title>Stagiune</title>
</head>
<body>
	
<div id="Body"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner.png">
		</div>
		
            <style type="text/css">
                .scroll{
                    background-color:#e2e9d7;
                    overflow: auto;
                    float:left;
                    width: 1300px;
                    height: 800px;
                }
            </style>
			
			<div id="rightSection" class="scroll">
			<button type="button" onclick="location.href='Admin.jsp'"><b>Back</b></button>
               
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
			<h2 align="center">Afisare</h2>
			<table align="center" cellpadding="8" cellspacing="3" border="1">
				
				<tr>
				
					<td>Id</td>
					<td>Ziua</td>
					<td>Teatru</td>
					<td>Data Inceput</td>
					<td>Data Sfarsit</td>
					<td>Ora</td>
					<td>Durata</td>
					<td>Bilete</td>
					<td>Rezervari</td>
			
					
					
				</tr>
				<%
				
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM stagiune");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Ziua")%></td>
					<td><%=rs.getString("Teatru")%></td>
					<td><%=rs.getString("DataInceput")%></td>
					<td><%=rs.getString("DataSfarsit")%></td>
					<td><%=rs.getString("Ora")%></td>
					<td><%=rs.getString("Durata")%></td>
					<td><%=rs.getString("Bilete")%></td>
					<td><%=rs.getString("Rezervari")%></td>
				
					

				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Insert</h2>
        <form method="post" action="IStagiune">
            <table align="center">
               
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>
				<tr>
                <td>Teatru</td>
               	<td><input type="text" name="Teatru"></td>
                </tr>
                <tr>
                <td>Ziua</td>
               	<td><input type="text" name="Ziua"></td>
                </tr>

                <tr>
                <td>DataInceput</td>
               	<td><input type="text" name="DataInceput"></td>
                </tr>
                
                <tr>
                    <td>DataSfarsit</td>
                    <td><input type="text" name="DataSfarsit"></td>
                </tr>
                 <tr>
                    <td>Ora</td>
                    <td><input type="text" name="Ora"></td>
                </tr>
                <tr>
                    <td>Durata</td>
                    <td><input type="text" name="Durata"></td>
                </tr>
                <tr>
                    <td>Bilete</td>
                    <td><input type="text" name="Bilete"></td>
                </tr>
                 <tr>
                    <td>Rezervari</td>
                    <td><input type="text" name="Rezervari"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Insert"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Delete</h2>
        <form method="post" action="DStagiune">
            <table align="center">

                <tr>
                    <td>Id:</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Delete"></td>
                </tr>

            </table>
        </form>

       
        <h2 align="center">Change</h2>
        <form method="post" action="CStagiune">
            <table align="center">
 				<tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
               	 </tr>
				<tr>
                <td>New Teatru</td>
               	<td><input type="text" name="Teatru"></td>
                </tr>
                <tr>
                <td>New Ziua</td>
               	<td><input type="text" name="Ziua"></td>
                </tr>

                <tr>
                <td>New Data Inceput</td>
               	<td><input type="text" name="DataInceput"></td>
                </tr>
                
                <tr>
                    <td>New Data Sfarsit</td>
                    <td><input type="text" name="DataSfarsit"></td>
                </tr>
                  <tr>
                    <td>New Ora</td>
                    <td><input type="text" name="Ora"></td>
                </tr>
                 <tr>
                    <td>New Durata</td>
                    <td><input type="text" name="Durata"></td>
                </tr>
                 <tr>
                    <td>New Bilete</td>
                    <td><input type="text" name="Bilete"></td>
                </tr>
                 <tr>
                    <td>New Rezervari</td>
                    <td><input type="text" name="Rezervari"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Change"></td>
                </tr>

            </table>
        </form>
        </div>
		</div>
        </div>
		</div>
	
</body>
</html>