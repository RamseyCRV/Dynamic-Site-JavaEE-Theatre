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
<title>Rezervare</title>
</head>
<body>

<div id="body"
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

			<div id="r" class="scroll">
				<button type="button" onclick="location.href='User.jsp'"><b>Inapoi</b></button>
                <h2 align="center">Rezerva</h2>
                <form method="post" action="Rezervare">
                    <table align="center">
                       
                        <tr>
                            <td>Id</td>
                            <td><input type="text" name="Id"></td>
                        </tr>
                        
                        <tr>
        
                            <td>Numar Bilete</td>
                            <td><input type="text" name="NrBilete"></td>
                        </tr>
                         
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Rezerva"></td>
                        </tr>
                    </table>
                </form>
				
			</table>
			</div>
		</div>

</body>
</html>