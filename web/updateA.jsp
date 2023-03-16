<%-- 
    Document   : updateA
    Created on : Nov 7, 2022, 4:54:01 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Account </title>
        <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    
     
    <body>
        <h1>Update a Account</h1>
        <form action="updateA" method="POST" id="contact">
            <input type="text" hidden name="idAccount" value="${requestScope.account.idAccount}"/><br/>
            <fieldset>enter username:<input type="text" name="email" value="${requestScope.account.email}"/><br/></fieldset>
            <fieldset>enter password:<input type="text" name="password"value="${requestScope.account.password}"/><br/></fieldset>
            <fieldset>enter fullName:<input type="text" name="fullName" value="${requestScope.account.fullName}"/><br/></fieldset>
            <fieldset>enter phone Number:<input type="text" name="phone_Number" value="${requestScope.account.phone_Number}"/><br/></fieldset>
            <fieldset>enter birthday:<input type="text" name="birthday" value="${requestScope.account.birthday}"/><br/></fieldset>
            <fieldset>enter createDate:<input type="text" name="create_date" value="${requestScope.account.create_date}"/><br/></fieldset>
            <fieldset><input type="submit" value="Save"/></fieldset>

        </form>

    </div>
</body>
</html>
