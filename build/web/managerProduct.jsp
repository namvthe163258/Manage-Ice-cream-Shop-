<%-- 
    Document   : manager
    Created on : Oct 25, 2022, 10:00:52 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager</title>
        <link href="css/about.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="./css/manager.css"/>
        <style>
            a{
                text-decoration: none;
            }
            .container{
    background-color: #FFFACD;
}
        </style>
        <script type="text/javascript">
            function doDelete(idProduct) {
                if (confirm("are you sure delete with id=" + idProduct + "?")) {
                    window.location = "delete?id=" + idProduct;
                }
            }
        </script>
    </head>




    <body >
        <div class="container">
            
            <h1>Manager Product</h1>
            <a href="addP.jsp">Add new </a>
            <table class="table">
                <tr>
                    <th>ProductId</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Old Date</th>
                    <th>New Date</th>
                    <th></th>

                </tr>
                <c:forEach items="${requestScope.listProduct}" var="p" >
                    <tr>
                        <td>${p.idProduct}</td>
                        <td>${p.nameProduct}</td>
                        <td><img src="img/${p.img}.jpg" alt=""/></td>
                        <td>${p.price}</td>
                        <td>${p.quantity}</td>
                        <td>${p.createDate}</td>
                        <td>${p.update}</td>
                        <td>
                                  <a href="#" onclick="doDelete('${p.idProduct}')">Delete</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="update?id=${p.idProduct}">Update</a>
                        </td>

                    </tr>
                </c:forEach>

            </table>


        </div>

    </body>

</html>
