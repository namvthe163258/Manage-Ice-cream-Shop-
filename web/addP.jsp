<%-- 
    Document   : add
    Created on : Nov 1, 2022, 12:40:20 AM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add product</title>
       <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Add a new Product</h1>
        <form action="add" method="get" id="contact">
            enter id:<input type="text" name="id"/><br/>
            enter name:<input type="text" name="name"/><br/>
            enter IDCate:<input type="text" name="idCate"/><br/>
            enter img:<input type="text" name="img"/><br/>  
            enter price:<input type="text" name="price"/><br/>
            enter quantity:<input type="text" name="quantity"/><br/>
            enter new date:<input type="text" name="newdate"/><br/>

            <input type="submit" value="Save"/>

        </form>
    </body>
</html>
