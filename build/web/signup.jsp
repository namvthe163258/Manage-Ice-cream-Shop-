<%-- 
    Document   : signup
    Created on : Nov 2, 2022, 6:47:35 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-up</title>
        <link href="css/signup.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="register-form">

            <div class="header-register">
                <h2>Sign Up</h2>
            </div>
            <div class="content">
                <form action="signup" method="post">
                    
                    <div class="form-groupRegister">
                        <input id="username" name="username" type="text" class="input-form" placeholder="Username" required="required">   
                    </div>
                    <div class="form-groupRegister">
                        <input id="password" name="password" type="password" class="input-form" placeholder="Password" required="required">  
                    </div>
                    <div class="form-groupRegister">
                        <input id="rePassword" name="rePassword" type="password" class="input-form" placeholder="Re-password" required="required">
                    </div>
                    <div class="form-btn">
                        <button type="submit" class="btn">Register</button> 
                    </div>
                    <div class="form-link">
                        <a href="login.jsp">Click here to Login</a>
                    </div>


                    <br>

                </form>
            </div>
        </div>
    </body>
</html>
