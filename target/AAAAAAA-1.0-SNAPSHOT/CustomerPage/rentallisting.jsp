<%-- 
    Document   : rentallisting
    Created on : Mar 30, 2023, 11:10:55 AM
    Author     : nitro 5
--%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.Student"%>
<!DOCTYPE html>
<html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="newhomepage.css">
        <style>
            *{
                box-sizing: border-box;
                padding:0;
                margin: 0;
            }
            .boxx{
                background-color: #333;
                color: white;
                margin-left: 10px;
                font-size: 16px;
                margin-top: 15px;
                border: none;
            }

            .boxx {
                position: relative;
                /* z-index: 1; */
                display:flex;
                margin-left: 200px;
            }

            .small-box {
                display: none;
                position: absolute;
                top:20px;
                background-color: #f1f1f1;
                min-width: 140px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                /* z-index: 1; */

            }

            .small-box a {
                color: black;
                text-decoration: none;
                display: block;
            }

            .small-box a:hover {
                background-color: #ddd;
            }

            .boxx:hover .small-box {
                display: block;
            }


            .logo{
                padding: 0;
                margin: 0;
                margin-left: 80px;
                background-color: none;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 50px;
                width: 200px;
            }
            .logo h1 {
                font-size: 30px;
                font-weight: bold;
                font-family: monospace;
                letter-spacing: 7px;
                cursor: pointer;

            }

            .logo h1 {
                padding: 64px;
                background: linear-gradient(to right, hsl(0, 0%, 100%) 40%, hsl(0, 0100%, 0.1%) 50%, hsl(0, 20%, 100%) 60%);/*0% fast 50 little slow*/
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                animation: shine 5s infinite linear;
            }

            @keyframes shine {
                0% {
                    background-position: 0;
                }

                60% {
                    background-position: 600px;
                }

                100% {
                    background-position: 600px;
                }
            }/* animated Logo*/

            /*navbar*/
            nav {
                background-color: #333;
                height: 50px;
                display: flex;
                /*justify-content: center;*/
                opacity: 90%;
            }

            ul {
                list-style: none;
                margin: 0;
                padding: 0;
                margin-left: 300px;
                float: left;
                display: flex;
                list-style: none;
            }

            li {
                margin: 0 10px;
            }
            ul li input[type="submit"]{
                background-color: white;
                color: #333;
                border-radius: 4px;
                cursor: pointer;
                padding: 6px 6px;
                margin-top: 10px;
                border: none;

            }

            a {
                display: block;
                color: #fff;
                text-decoration: none;
                font-weight: bold;
                padding: 15px;
            }

            a:hover:not(.active) {
                background-color: #555;
                height: 50px;
            }
            .active {
                background-color: #111;
                height: 50px;
                opacity: 50%;
            }



            .bodyy{
                width: 100%;

                background-color: white;
            }
            .first{
                height: 400px;
                width: 100%;
                background-color: none;
                display: flex;
                flex-wrap: nowrap;



            }
            .fir{
                height: 100px;
                width: 100%;
                /* background-color: aqua; */

            }
            .fir h2{
                text-align: center;
                padding-top: 30px;
            }
            .houses{
                height: 330px;
                width: 22.5%;
                border: 2px solid grey;
                margin: 3%;
                float: left;
                background-color: lightgrey;
                text-align: center;
                color: black;

            }
            .houses:hover{
                box-shadow: 0 0 3px 3px silver;
            }
            .houses img{



                width: 100%;
                height: 209px;
            }

            .houses .house-title{
                font-weight: bold;
                color: black;
                padding: 1%;
            }
            .house-price{
                font-size: 120%;
                color: goldenrod;
                padding: 1%;
            }
            .house-added,.house-location{
                font-weight: lighter;
                font-size: 90%;
                color: black;
                padding: 1%;
            }
            .houses .btn-book{
                margin: 3%;
                background-color: purple;
                color: white;
                border: none;
            }
            .houses .btn-book:hover{
                background-color: darkblue;
            }
            .about{
                height: 500px;
                width: 100%;
                display: flex;
                flex-wrap: nowrap;
                /* background-color: aqua; */
            }
            .about_left{
                margin-left: 100px;
                height: 500px;
                width: 40%;
                margin-top: 30px;
                /* background-color: white; */
            }
            .about #left{
                padding: 50px;
                line-height: 1.5;
                text-align: justify;
            }
            .about #right img{
                border-radius: 10px;
                margin-left: 40px;
                margin-top: 50px;

            }
            footer {
                margin-top: 100px;
                background-color: #333;
                color: #fff;
                padding: 20px;
                text-align: center;
                position: absolute;
                bottom: -1000px;
                display: block;
                width: 100%
            }
            .houses{
                margin-left: 100px
            }
            .search-bar {
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 20px 0;
            }

            .search-bar input[type="text"] {
                padding: 10px;
                width: 300px;
                border: 2px solid #ccc;
                border-radius: 5px;
                outline: none;
                font-size: 16px;
            }

            .search-bar button[type="submit"] {
                padding: 10px;
                background: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                margin-left: 10px;
                cursor: pointer;
            }

            .search-bar button[type="submit"]:hover {
                background: #333;
            }



        </style>



    </head>

    <body>


        <nav>
            <!--Navigation bar -->
            <div class="logo">
                <h1>RoomLess</h1>       
            </div>

            <!--for inserting logo -->
            <ul>

                <li><a  href="CustomerPage/homepage.jsp">Home</a></li>
                <li><a  class="active" href="admin?page=listroom">Rental Listing</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">About Us</a></li>

                <div class="boxx">
                    <i class="fa fa-user-circle"></i>
                    <div class="small-box"    >
                        <a href="CustomerPage/changepassword.jsp">change password</a>
                        <a href="admin?page=logout">logout</a>
                    </div>

                </div>

            </ul>
        </nav>
        <form action="admin?page=rsearch" method="post">
        <div class="search-bar">
            <input type="text" name="query" id="admsearchbox" placeholder="enter location">
            <button type="submit"><i class="fa fa-search"></i></button>
        </div>
        </form>
        <div class="bodyy">
            <div class="fir">
                <h2>List of The Available Rooms</h2>
            </div>
            <c:forEach items="${RoomList}" var="student">




                <div class="houses">
                    <div class="row">
                        <div class="col-md-4">

                            <img src="${student.file}">

                            <span class="house-title">${student.roomtitle}</span><br />
                            <span class="house-location">${student.roomlocation}</span><br />
                            <span class="house-addeds">${student.roomprice}</span><br />
                            <button type="button" class="btn-book" > <a href="admin?page=roomsdetails"> Details </a></button>

                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>



        <footer>
            <div class="container">
                <p>Copyright &copy; 2023. All rights reserved.</p>


            </div>
        </footer>


    </body>
</html>

