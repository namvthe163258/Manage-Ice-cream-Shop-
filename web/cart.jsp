<%-- 
    Document   : cart
    Created on : Nov 8, 2022, 1:28:01 AM
    Author     : Nam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
        <link href="css/shop.css" rel="stylesheet" type="text/css"/>
    </head>

    <style>
         body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Roboto', sans-serif;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                min-width: 1000px;
                background: #fff;
                padding: 20px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {
                padding-bottom: 10px;
                margin: 0 0 10px;
                min-width: 100%;
            }
            .table-title h2 {
                margin: 8px 0 0;
                font-size: 22px;
            }
            .search-box {
                position: relative;
                float: right;
            }
            .search-box input {
                height: 34px;
                border-radius: 20px;
                padding-left: 35px;
                border-color: #ddd;
                box-shadow: none;
            }
            .search-box input:focus {
                border-color: #3FBAE4;
            }
            .search-box i {
                color: #a0a5b1;
                position: absolute;
                font-size: 19px;
                top: 8px;
                left: 10px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }
            table.table td:last-child {
                width: 130px;
            }
            table.table td a {
                color: #a0a5b1;
                display: inline-block;
                margin: 0 5px;
            }
            table.table td a.view {
                color: #03A9F4;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: #E34724;
            }
            table.table td i {
                font-size: 19px;
            }
            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 95%;
                width: 30px;
                height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 30px !important;
                text-align: center;
                padding: 0;
            }
            .pagination li a:hover {
                color: #666;
            }
            .pagination li.active a {
                background: #03A9F4;
            }
            .pagination li.active a:hover {
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 6px;
                font-size: 95%;}
    </style>
    
    <body>
        <!-- START HEADER -->
        <div>
            <div id="header" style="width: 1000px; height: 100px; margin: 0 auto; background-color:#FFFFFF; border: none solid #8C0209;">

                <div> 

                    <h1 style="float:left; margin-left:-150px; font-size:40px">
                        <span style=""><a href="home" style="text-decoration: none;color:#DAA520;background-color:#4CAF50; border-radius:10px">HOLA</a> </span><span style=""><a href="home" style="text-decoration: none;color:#000000"></a></span>
                    </h1>

                    <img style=" height: 140px; width: 140px; margin-top:0px; margin-left: 330px; margin-right: 20px"  src="img/logokem4_1.jpg" alt="alt"/>

                    <p style="float:left;margin-top: 70px;font-weight: 900px;margin-left: 5px;word-spacing: 2px;color:black;font-size:15px;">
                        Ice-Cream Store
                    </p>
                </div>
            </div>


            <div class="about" >

                <h2 style="font-size:45px ;color: #ff8a6c;font-family:Time New Roman; margin-right: 300px">GIỎ HÀNG</h2>

                <div class="container-xl">
                    <div class="table-responsive">
                        <div class="table-wrapper">
                            <div class="table-title">
                                <div class="row">
                                    <div class="col-sm-8"><h2>My <b>Cart</b></h2></div>
                                    <div class="col-sm-4">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Name</th>
<!--                                    <th>Image</th>-->
                                    <th>Quantity</th>
                                    <th>Price </th>
                                    <th>Total Money</th>
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <c:set var="o" value="${requestScope.cart}"/>
                            <c:set var="tt" value="0"/>

                            <tbody>
                            <c:forEach items="${o.items}" var="i">
                                <c:set var="tt" value="${tt+1}"/>
                                <tr>
                                    <td>${tt}</td>
                                    <td>${i.product.getNameProduct()}</td>
<!--                                    <td><img  style="height: 80px ;width: 80px"src="${i.product.getImg()}.jpg "></td>-->
                                    <td style="text-align: center">
                                        <button><a href="process?num=-1&id=${i.product.idProduct}">-</a></button>
                                        ${i.getQuantity()}
                                        <button><a href="process?num=1&id=${i.product.idProduct}">+</a></button>
                                    </td>
                                    <td class="tr">
                                <fmt:formatNumber pattern="##.#" value="${i.getPrice()}"/> VND
                                </td>
                                <td class="tr">
                                    $<fmt:formatNumber pattern="##.#" value="${(i.getPrice()*i.getQuantity())}"/> VND
                                </td>

                                <td>  
                                    <form action="process" method="post">
                                        <input type="hidden" name="id" value="${i.product.idProduct}">
                                        <input type="submit" value="Return Item">
                                    </form>
                                </td>
                                </tr>

                            </c:forEach>

                            </tbody>
                        </table>
                        <h3>Total Bill:${o.totalMoney} VND</h3>
                        <hr>
                        <h3 style="color: #34ce57">${requestScope.ms}</h3>
                        <form action="checkout" method="post">
                            <input type="submit" value="Check Out"/>
                        </form>
                        <hr>
                        <a href="shop" >Click me to continue shopping</a>


                    </div>
                </div>




                <!-- start Footer-->
                <div id="footer" style="height: 250px; margin: 0;padding: 0px 20px;
                     background-color: beige; border: none solid #8C0209;">
                    <p style="float:left; margin:70px; font-size:60px;"> <span style="color: yellowgreen">HOLA </span><span style="color:#000000">Store</span>
                    </p>

                    <p style="float:left;margin-top:170px;margin-left:-350px;">
                        <a href="https://www.instagram.com/_vtn1102/?hl=en"><img src="src/ins.png" style="width:65px; height:65px;"></img></a>
                        <a href="https://www.facebook.com/namvthe163258"><img src="src/fb.png" style="width:65px; height:65px;"></img></a>
                        <a href="https://www.tiktok.com/@vtn_2011"><img src="src/tiktok.png" style="width:65px; height:65px;"></img></a>

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
