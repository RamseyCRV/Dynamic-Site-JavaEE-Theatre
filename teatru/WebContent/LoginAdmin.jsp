<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="Body"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner.png">
		</div>

		<div id="bodyContainer">
			<div id="leftSection" style="float: Left; width: 200px; height: 800px;background-color:black">

                <ul>
                    <button type="button" onclick="location.href='LoginAdmin.jsp'"><b>Admin</b></button>
                    <hr>
                    <button type="button" onclick="location.href='LoginUser.jsp'"><b>User</b></button>
                    <hr>
                    <button type="button" onclick="location.href='Register.jsp'"><b>Register</b></button>
                       
                </ul>


			</div>
            
            <style type="text/css">
                .scroll{
                    background-color:whitesmoke;
                    overflow: auto;
                    float:left;
                    width: 1100px;
                    height: 800px;
                }
            </style>

			<div id="rightSection" class="scroll">
				
                   <form method="post" action="LoginAdmin" align="center" style="margin-top: 100px;">
        	
                    <table align="center">
                        
                        <tr>
                            <td>Admin User:</td>
                            <td><input type="text" name="User"></td>
                        </tr>
            
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="Password"></td>
                        </tr>
            
                        <tr>
                            <td><input type="submit" value="Login"></td>
                        </tr>
            
                    </table>
                </form>
            

			</div>
		</div>
	</div>
</body>
</html>