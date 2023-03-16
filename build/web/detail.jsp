<%-- 
    Document   : detail
    Created on : Oct 25, 2022, 9:56:04 PM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Detail</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/detail.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <!-- START HEADER -->
        <div>
            <div id="header" style="width: 1000px; height: 100px; margin: 0 auto; background-color:#FFFFFF; border: none solid #8C0209;">

                <div> 

                    <h1 style="float:left; margin-left:-150px; font-size:40px">
                        <span style=""><a href="home" style="text-decoration: none;color:#DAA520;background-color:#4CAF50; border-radius:10px">HOLA</a> </span><span style=""><a href="home" style="text-decoration: none;color:#000000"></a></span>
                    </h1>

                    <img style=" height: 140px; width: 140px; margin-top:0px; margin-left: 190px; margin-right: 20px"  src="img/logokem4_1.jpg" alt="alt"/>

                    <p style="float:left;margin-top: 70px;font-weight: 900px;margin-left: 5px;word-spacing: 2px;color:black;font-size:15px;">
                        Ice-Cream Store
                    </p>
                </div>
            </div>

            <!-- END HEADER -->

            <!-- START MENU -->
            <section id="menuContaniner">
                <ul class="main_nav">

                    <c:if test="${sessionScope.account.idRole == 2}">
                        <li ><a  href="about" >About</a></li>
                        <li ><a  href="shop" style="color:green;">Shop</a></li>
                        <li ><a  href="cart">My Order</a></li>
                        <!--                <li ><a  href="manager">Manager</a></li>-->
                        <li ><a  href="contact">Contact</a></li>
                        <li ><a  href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.idRole == 1}">
                        <li ><a  href="shop" style="color:green;"></a></li>
                        <li ><a  href="shop" style="color:green;">Shop</a></li>
                        <li ><a  href="manager">Manager</a></li>
                        <li ><a  href="contact">Contact</a></li>
                        <li ><a  href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.idRole == null}">
                        <li ><a  href="about" >About</a></li>
                        <li ><a  href="shop" style="color:green;">Shop</a></li>
                        <li ><a  href="contact">Contact</a></li>
                        <li ><a  href="login">Login</a></li>
                        <li ><a  href="register">Register</a></li>
                        </c:if>
                </ul>
            </section>	
            <!-- END MENU -->

            <!-- START CONTENT PAGE -->
            <section id="mainContainer">
                <div class="about" >
                    <h2 style="font-size:50px;font-family:Time New Roman">${requestScope.product.nameProduct}</h2>
                    <div style="margin-top:10px;">
                        <h3 style="margin-bottom: 20px; color: chocolate"><a style="font-size: calc; color:#32CD32 ">Details:</a> ${requestScope.product.nameProduct} mang đến người<br/>
                            dùng hương vị kem ngọt ngào, mát lạnh, đầy sảng khoái. </h3>
                        <img src="img/${requestScope.product.img}.jpg" style="width:370px;height:400px;"></img>
                    </div>
                    <div style="font-size:20px;color:#556B2F;line-height:2em;">Price:<span style="color: crimson;font-size: 30px;">${requestScope.product.price}</span> </div>

                    <div> 
                        <form method="post" action="detail?pid=${requestScope.product.idProduct}&price=${requestScope.product.price}" >
                            <label style="margin-top:20px;font-size:20px;color:#556B2F;line-height:2em;">
                                Choose Quantity:</label> <input style="width: 80px;" type="number" name="quantity" value="1" /> 
                            <br><p>  
                                <!--                                <input type="submit" value="BUY"/>-->

                        </form>
                        <h3
                            "><button style="height: 37px;width:80px;background: #32CD32 "><a href="buy?id=${requestScope.product.idProduct}&num=1">Add to Cart</a></button> </h3>
                    </div>


                </div>
            </section>
            <!-- end page -->

            <!-- start Footer-->
            <div id="footer" style="height: 250px; margin: 0;padding: 0px 20px;
                 background-color: beige; border: none solid #8C0209;">
                <p style="float:left; margin:70px; font-size:60px;"> <span style="color: yellowgreen">HOLA </span><span style="color:#000000">Store</span>
                </p>

                <p style="float:left;margin-top:170px;margin-left:-350px;">
                    <a href="https://www.instagram.com/_vtn1102/?hl=en"><img src="src/ins.png" style="width:65px; height:65px;"></img>
                        <a href="https://www.facebook.com/namvthe163258"><img src="src/fb.png" style="width:65px; height:65px;"></img>

                            </p>

                            <p style="float:right;margin:40px;text-align:left;font-size:15px;margin-right:190px;margin-left:130px;margin-top: 80px">
                                <b style="color:chocolate;margin-left: 140px">Contact</b><br /><br />
                                <span style="color: #32CD32;">
                                    Direct: Đại lộ Thăng Long,Khu CNC Hòa Lạc,Thạch Thất,Hà Nội<br/>
                                    Contact: Vũ Thành Nam - 0364882566<br/>
                                    Email: namvthe163258@fpt.edu.vn<br/>
                                    Facebook: HoLa Store Ice-Cream<br/>
                                    Time: 7h30-19h30 on Monday to Saturday.

                                </span>
                                </div>
                                </div>
                                <!-- end page -->
                                </body>
                                </html>

