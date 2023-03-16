<%-- 
    Document   : managerAccount
    Created on : Nov 7, 2022, 1:24:30 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Account</title>
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
            function doDelete(idAccount) {
                if (confirm("are you sure delete with id=" + idAccount + "?")) {
                    window.location = "deleteA?id=" + idAccount;
                }
            }
        </script>
    </head>




    <body >
        <div class="container">
            
            <h1>Manager Account</h1>
            <a href="addA.jsp">Add new user </a>
            <table class="table">
                <tr>
                    <th>idAccount</th>
                    <th>Username</th>
                    <th>password</th>
                    <th>fullName</th>
                    <th>phone_Number</th>
                    <th>birthday</th>
                    <th>create_date</th>
                    <th></th>

                </tr>
                <c:forEach items="${requestScope.listA}" var="a" >
                    <tr>
                        <td>${a.idAccount}</td>
                        <td>${a.email}</td>
                        <td>${a.password}</td>
                        <td>${a.fullName}</td>
                        <td>${a.phone_Number}</td>
                        <td>${a.birthday}</td>
                        <td>${a.create_date}</td>
                        <td>
                                  <a href="#" onclick="doDelete('${a.idAccount}')">Delete</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="updateA?id=${a.idAccount}">Update</a>
                        </td>

                    </tr>
                </c:forEach>

            </table>


        </div>

    </body>


</html>
