<%-- 
    Document   : update
    Created on : Nov 1, 2022, 11:31:45 AM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
        <link href="css/update.css" rel="stylesheet" type="text/css"/>
    </head>
    
     
    <body>
        <h1>Update a Product</h1>
        <form action="update" method="POST" id="contact">
            <input type="text" hidden name="idProduct" value="${requestScope.product.idProduct}"/><br/>
            <fieldset>Enter Name:<input type="text" name="nameProduct" value="${requestScope.product.nameProduct}"/><br/></fieldset>
            <fieldset>enter quantity:<input type="text" name="quantity"value="${requestScope.product.quantity}"/><br/></fieldset>
            <fieldset>enter price:<input type="text" name="price" value="${requestScope.product.price}"/><br/></fieldset>
            <fieldset>enter cid:<input type="text" name="idCate" value="${requestScope.product.idCate}"/><br/></fieldset>
            <fieldset>enter image<input type="text" name="image" value="${requestScope.product.img}"/><br/></fieldset>
            <fieldset>enter createDate<input type="text" name="createDate" value="${requestScope.product.createDate}"/><br/></fieldset>
            <fieldset>enter update<input type="text" name="update" value="${requestScope.product.update}"/><br/></fieldset>
            <fieldset><input type="submit" value="Save"/></fieldset>

        </form>

    </div>
</body>
</html>
