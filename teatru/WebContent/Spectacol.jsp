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
<title>Spectacol</title>
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
			<table align="center" cellpadding="5" cellspacing="3" border="1">
				
				<tr>
				
					<td>Id</td>
					<td>Nume</td>
					<td>Autor</td>
					<td>Regizor</td>
					<td>Teatru</td>
			
					
					
				</tr>
				<%
				
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
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
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Insert</h2>
        <form method="post" action="ISpectacol">
            <table align="center">
               
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                <td>Nume</td>
               	<td><input type="text" name="Nume"></td>
                </tr>

                <tr>
                <td>Autor</td>
               	<td><input type="text" name="Autor"></td>
                </tr>
                
                <tr>
                    <td>Regizor</td>
                    <td><input type="text" name="Regizor"></td>
                </tr>
                 <tr>
                    <td>Teatru</td>
                    <td><input type="text" name="Teatru"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Insert"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Delete</h2>
        <form method="post" action="DSpectacol">
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
        <form method="post" action="CSpectacol">
            <table align="center">
 				<tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
               	 </tr>

                <tr>
                <td>New Nume</td>
               	<td><input type="text" name="Nume"></td>
                </tr>

                <tr>
                <td>New Autor</td>
               	<td><input type="text" name="Autor"></td>
                </tr>
                
                <tr>
                    <td>New Regizor</td>
                    <td><input type="text" name="Regizor"></td>
                </tr>
                  <tr>
                    <td>New Teatru</td>
                    <td><input type="text" name="Teatru"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Change"></td>
                </tr>

            </table>
        </form>
        </div>
		</div>
</body>
</html>