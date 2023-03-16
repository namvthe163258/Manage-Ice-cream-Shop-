<%-- 
    Document   : addA
    Created on : Nov 7, 2022, 2:03:49 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account</title>
       <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Add a new User</h1>
        <form action="addA" method="get" id="contact">
            enter id:<input type="text" name="id"/><br/>
            enter username:<input type="text" name="name"/><br/>
            enter password:<input type="text" name="pass"/><br/>
            enter full_Name :<input type="text" name="fullName"/><br/>  
            enter phone_Number:<input type="text" name="phone"/><br/>
            enter birthday:<input type="text" name="birth"/><br/>
            enter create_date:<input type="text" name="create_date"/><br/>

            <input type="submit" value="Save"/>

        </form>
    </body>
</html>
