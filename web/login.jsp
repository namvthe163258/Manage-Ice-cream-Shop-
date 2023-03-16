<%-- 
    Document   : login
    Created on : Oct 25, 2022, 9:51:34 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    <script src="https://kit.fontawesome.com/5eb161e28e.js"></script>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
  body {
            font-family: 'Mukta', sans-serif;
            background: url("src/login2.jpg") no-repeat; weight: 900px ; height: 1600px;
        }
 
        </style>

    <body>
        <div class="content-w3ls">
            <div class="text-center icon">
                <span class="fa fa-fire"></span>
            </div>

            <div class="content-bottom">

                <form action="login" method="post">

                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="email" id="text1" type="text" value="" placeholder="Username" required >
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="password" id="myInput" type="Password" placeholder="Password" required >
                        </div>
                    </div>
                    <div class="wthree-field">
                        <input type="submit" class="btn" value="LOGIN">
                    </div>
                    <div class="register" style="margin-top: 15px; ">
                        <a href="signup">Sign Up now</a>  
                    </div>
                </form>

                <%
                    if (request.getAttribute("errorMessage") != null) {
                %>
                <h2 style="color: red"><%= request.getAttribute("errorMessage")%></h2>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
