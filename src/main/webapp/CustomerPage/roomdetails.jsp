<%-- 
    Document   : roomdetails
    Created on : Mar 30, 2023, 5:21:34 PM
    Author     : nitro 5
--%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto:300');
           * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
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
                margin-left: 450px;
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
    
            .account-icon {
                display: flex;
                align-items: center;
                cursor: pointer;
            }
    
            #account_icon {
                color: #fff;
                font-size: 1.25em;
                margin-left: 30px;
            } 
      
        .title{
            height: 100px;
            width: 100%;
            background-color: #333;
        }
        .title h2{
            text-align: center;
            padding-top: 30px;
            color: white;
        }
        .image{
            float: left;
            padding: 50px;
            margin-top: 20px;
            margin-left: 366px;
            height: 400px;
            width: 50%;
            background-color: #333;
        }
        .image img{
            float: left;
            height: 300px;
            margin-left: 50px;
            
        }
        .title1{
            height: 60px;
            width: 50%;
            float: left;
            margin: 10px;
            background-color: #333;
            margin-left: 366px;
        }
        .title1 h2{
            color: white;
            text-align: center;
            padding-top: 15px;
        }
        .title3{
            height: 310px;
            float: left;
            width: 50%;
            margin: 2px;
            margin-left: 366px;
            background-color: #333;
            display: flex;
            flex-wrap: nowrap;
        }
        .title3 .left{
            height: 250px;
            width: 260px;
            /* background-color: aqua; */
            margin-top: 30px;
            margin-left: 70px;
        }
        #left p {
            margin-top: 10px;
            color: white;
            
        }
        #right p{
            margin-top:     10px;
            color: white;
        }
        #right button{
           margin-top: 20px;
            background-color: #1877f2;
            /* height: 40px;
            width: 100px; */
            border-radius: 5px;
        }
        
        #right button:hover{
            cursor: pointer;
            
        }
        .location{
            height: 400px;
            float: left;
            width: 50%;
            margin: 2px;
            margin-left: 366px;
            background-color: #333;
            display: flex;
            flex-wrap: nowrap;
        }
        .footer1 {
                /* margin-top: 10px;
                background-color: #333;
                color: #fff;
                padding: 20px;
                text-align: center; */
                margin-top: 1310px;
                height: 100px;
                width: 100%;
                border: solid black 0;
                background-color: #333;
              }
              .footer1 p{
                text-align: center;
               padding-top: 45px;
                color: #fff;
               
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

            <li><a  href="#">Home</a></li>
            <li><a class="active"href="#">Rental Listing</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
            

            

            <div class="account-icon" id="account_icon">
                <i class="fa fa-user-circle"></i>
                <!--Adding the icon of user -->

            </div>

        </ul>
    </nav>
    
    <c:forEach var="student" items="${RoomLiist}" varStatus="loop">
  <c:if test="${loop.index == 0}">

    <div class="title">
        <h2>Room Available(${student.roomtitle})</h2>
    </div>
    <div class="image">
        <img src="${student.file}" alt=" please check you internet connection">
    </div>
    <div class="title1">
        <h2>Details</h2>
    </div>
    <div class="title3">
        <div class="left" id="left" >
            <p> Property Type: Room</p>
            <p>Location: ${student.roomlocation}</p>
            <p>Size: ${student.roomsize}</p>
            <p>Description  </p>
            <p> ${student.roomdescription}</p>
            <p>ii: Smoking not allowed</p>
            <p>iii: Pet not allowed</p>

            

        </div>
        <div class="left" id="right">
            <p>Facilities</p>
            <p>Free Wifi</p>
            <p>Price: ${student.roomprice}</p>
            
            
            <button type="submit"><a href="CustomerPage/booknow.jsp">Book Now</a></button>
        </div>
              </c:if>
            </c:forEach>
        
    </div>
    <div class="title1">
        <h2>Location</h2>
    </div>
    <div class="location">
         <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7067.016614594214!2d85.30084465430349!3d27.67068038350195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2snp!4v1680236304202!5m2!1sen!2snp" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="footer1">
       
            <p>&copy; 2023 Dashboard Page</p>
        
    </div>


    
</body>

</html>