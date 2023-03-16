

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Product</title>
        <link href="css/shop.css" rel="stylesheet" type="text/css"/>
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
         

            <div class="about" >
               
                <h2 style="font-size:45px ;color: #ff8a6c;font-family:Time New Roman; margin-right: 200px">DANH SÁCH SẢN PHẨM</h2>
                
                <form action="action">
                      
                    <select style="height: 35px; width:200px;"  onchange="if (this.value) window.location.href=this.value">
                        <option style="text-align: center;" value="">Select sort</option>
                        <option value="search?sort=1&txts=${requestScope.txtS}">Giá tăng dần</option>
                        <option value="search?sort=2&txts=${requestScope.txtS}">Giá giảm dần</option>
                        <option value="search?sort=3&txts=${requestScope.txtS}">Tên spham từ A-Z</option>
                    </select>
                    <br/>
                </form>
                
                <div class="products">
                    <c:forEach items="${requestScope.ListS}" var="p" >
                        <ul>
                        <li>
                            <div class="product">
                                <div class="imgbox">
                                    <img src="img/${p.img}.jpg" alt=""/>
                                </div>
                                <div class="details">
                                    <h2> ${p.nameProduct}<br><span style="color: chocolate">Quantity:${p.quantity}</span></h2>
                                    <div class="price"> ${p.price}đ</div>
                                    <a href="detail?pid=${p.idProduct}&price=${p.price}"> See Detail </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                        
                    </c:forEach>
                   
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
