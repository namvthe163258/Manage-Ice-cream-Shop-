<%-- 
    Document   : home
    Created on : Oct 25, 2022, 9:39:53 PM
    Author     : Nam
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOLA Store</title>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    </head>
    <body>

        <!-- START HEADER -->
        <div>
            <div id="header" style="width: 1000px; height: 100px; margin: 0 auto; background-color:#FFFFFF; border: none solid #8C0209; ">

                <div> 

                    <h1 style="float:left; margin-left:-150px; font-size:40px">
                        <span style=""><a href="home" style="text-decoration: none;color:#DAA520;background-color:#4CAF50; border-radius:10px">HOLA</a> </span><span style=""><a href="home" style="text-decoration: none;color:#000000"></a></span>
                    </h1>

                    <img style=" height: 140px; width: 140px; margin-top:0px; margin-left: 190px; margin-right: 20px"  src="img/logokem4_1.jpg" alt="alt"/>

                    <p style="float:left;margin-top: 70px;font-weight: 900px;margin-left: 5px;word-spacing: 2px;color:black;font-size:15px;">
                        Ice-Cream Store
                    </p>
                </div>

                <div class="search" style="margin-left: 700px; ">
                    <form action="search" method="post">
                        <div>
                            <input style="height: 25px; width: 70%" type="text" name="txt" placeholder="Search product" value="${txtS}" >

                            <input href="search"; type="submit" value="Tìm kiếm"> 
                        </div>
                    </form>
                </div>
            </div>

            <!-- END HEADER -->



            <!-- START MENU -->
            <section id="menuContaniner">
                <ul class="main_nav">
                    <c:if test="${sessionScope.account.idRole == 2}">
                        <li ><a  href="shop" style="color:green;">Shop</a></li>
                        <li ><a href="show">Cart<i class="fa-solid fa-cart-shopping" id="cart"></i></a></li>                        
                        <li ><a  href="change">Change Pass</a></li>
                        <li ><a  href="#">Hi: <i class="fa-solid fa-user" id="user "></i> ${sessionScope.account.email}!</a></li>
                        <li ><a  href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.idRole == 1}">
                        <li ><a  href="shop" style="color:green;"></a></li>
                        <li ><a  href="managera" style="color:green;">Account</a></li>
                        <li ><a  href="manager">Product</a></li>
                        <li ><a  href="#">Hi: <i class="fa-solid fa-user" id="user "></i> ${sessionScope.account.email}!</a></li>
                        </a></li>
                        <li ><a  href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.idRole == null}">
                        <li ><a  href="about" >About</a></li>
                        <li ><a  href="login" style="color:green;">Shop</a></li>
                        <li ><a  href="login">Login</a></li>
                        <li ><a  href="register">Register</a></li>
                        </c:if>
                </ul>
            </section>	
            <!-- END MENU -->

            <img style="height:450px; width:100%; margin-top: 10px" src="img/banner1.jpg" alt="alt"/>

            <!-- START CONTENT PAGE -->
            <section id="mainContainer">

                <div class="para1">
                    <h2><span style="color:#32CD32">ICE CREAM</span> ARE</br>QUINTESSENCE</br> OF LOVE</h2>
                    <h3>Ice Cream is a famous dessert all over the world.
                        This dish contributes to the richness of the cuisine of 5 continents.
                        Although this ice cream is made from very simple ingredients.
                        However, with its unique taste, Ice cream has captivated many people when enjoying it.
                    </h3>
                    <p><a href="about"> OUR STORY </a></P>

                </div>

                <img src="src/kem1.jpg" style="float:right;margin-top:-450px;height:350px;margin-left:0px">
                <!-- PARA 2 -->
                <div class="para2">
                    <span style="padding-right:12px;">
                        <img src="src/kem2.jpg"style="width:500px;height:400px; margin-bottom: 20px;">
                    </span>
                    <span style="padding-right:10px;">
                        <img src="src/kem3.jpg" style="width:500px;height:400px; margin-left: 150px; margin-bottom: 20px">
                    </span>

                </div>

                <div class="row">
                    <h2 style="font-size:45px ;color: #ff8a6c;font-family:Time New Roman; text-align: center;">Sản Phẩm Nổi Bật</h2>

                    <div class="para2">
                        <span style="padding-right:3px;">
                            <div> <img src="img/oq3.jpg"style="width:200px;height:300px; "> <p style="font-size: 20px;margin-left: 60px;margin-right: 30px">Kem ốc quế Vani</p></div>

                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/knk1.jpg" style="width:200px;height:300px; margin-left: 80px; ">
                                <p style="font-size: 20px;margin-left: 100px;">Kem nhập khẩu Đức</p></div>
                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/kh3.jpg" style="width:200px;height:300px; margin-left: 125px; ">
                                <p style="font-size: 20px;margin-left: 120px;">Kem  hộp Việt Quất</p></div>
                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/th3.jpg" style="width:200px;height:300px; margin-left: 125px; ">
                                <p style="font-size: 20px;margin-left: 120px;">Kem que Dưa hấu </p></div>

                        </span>

                    </div>

                </div>

                <div class="row">
                    <h2 style="font-size:45px ;color: #ff8a6c;font-family:Time New Roman; text-align: center;">Sản Phẩm Sắp Ra Mắt</h2>

                    <div class="para2">
                        <span style="padding-right:3px;">
                            <div> <img src="img/sapra1.jpg"style="width:200px;height:300px; "> <p style="font-size: 20px;margin-left: 60px;margin-right: 30px">Kem nhập khẩu Thái</p></div>

                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/sapra2.jpg" style="width:200px;height:300px; margin-left: 80px; ">
                                <p style="font-size: 20px;margin-left: 100px;">Kem hộp Dâu tây</p></div>
                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/sapra3.jpg" style="width:200px;height:300px; margin-left: 125px; ">
                                <p style="font-size: 20px;margin-left: 120px;">Kem  hộp Oreo</p></div>
                        </span>
                        <span style="padding-right:3px;">
                            <div><img src="img/sapra4.jpg" style="width:200px;height:300px; margin-left: 125px; ">
                                <p style="font-size: 20px;margin-left: 120px;">Kem hộp Vani-Socola</p></div>

                        </span>

                    </div>

                </div>



                <div class="boderPara2">	
                    <span style="float:left;padding-left:30px;"><a href="shop">ORDER ONLINE HERE</a></span>
                    <span style="float:center;padding-left:130px;"><a href="about">MORE ABOUT US</a></span>
                    <span style="float:right;padding-right:80px;"><a href="edit">MEMBERSHIP</a></span>
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
                            <a href="https://www.tiktok.com/@vtn_2011"><img src="src/tiktok.png" style="width:65px; height:65px;"></img>

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

                                    </body>
                                    </html>
