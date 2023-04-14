<%-- 
    Document   : homepage
    Created on : Mar 27, 2023, 11:47:00 AM
    Author     : nitro 5
--%>

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


            /* First Image home page */
            .home_page_image1{
                height: 550px;
                width: 100%;
                background-color: none;
                position: relative;
            }
            /*.slideshow-container {
                max-width: 1000px;
                position: relative;
                margin: auto;
              }*/

            .slide {
                display: none;
            }
            .slide:first-child {
                display: block;
            }
            .home_page_image1 img{
                float: left;
                z-index: 1;
                position: absolute;
            }

            .home_page_image1 .main_text_container{
                height: 550px;
                width: 550px;
                z-index: 2;
                position: absolute;
                margin: 50px 50px 00px 650px;
                font-size: 40px;

            }

            .main_text_container_inner1{
                display: inline-block;
                overflow: hidden;
                white-space: nowrap;
                margin-top: 30px;
            }
            .main_text_container{
                text-align: center;
                /* background: linear-gradient(141deg, #ccc 25%, #eee 40%, #ddd 55%);
                */color: #555;
                font-family: roboto;
                font-weight: bold;
                letter-spacing: 0px;
                overflow: hidden;
                -webkit-backface-visibility: hidden;
                -webkit-perspective: 1000;
                -webkit-transform: translate3d(0, 0, 0);

            }

            .main_text_container{
                display: inline-block;
                overflow: hidden;
                white-space: nowrap;
                float: right;
            }

            .first_text{
                animation: showup 10s;
            }

            .second_text {
                width: 200px;
                animation: none;
            }

            .second_text span {
                margin-left: -355px;
                animation: slidein 10s;
            }
            .body{
                width: 100%;
                height: 1500px;
                background-color: white;
            }
            .fir{
                height: 100px;
                width: 100%;

            }
            .fir h2{
                text-align: center;
                padding-top: 30px;
            }
            .fir h3{
                padding-top: 20px;
                text-align: center;
                color: #555;
            }
            .why{
                height: 300px;
                width: 100%;
                background-color: #c9c9c9;
                display: flex;
                flex-wrap: nowrap;
            }
            .why .box{
                height: 200px;
                width: 22.5%;
                /* background-color: white; */
                float: left;
                margin-left: 125px;
                text-align: center;
                margin-top: 100px;
            }
            .box h2{
                padding-top: 10px;

            }
            .box p{
                color: #555;
                padding: 15px;
            }

            .first{
                height: 400px;
                width: 100%;
                background-color: none;
                display: flex;
                flex-wrap: nowrap;


            }
            .first h2{
                text-align: center;
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

            .houses{
                height: 330px;
                width: 22.5%;
                border: 2px solid grey;
                /* margin: 3%; */
                margin-left: 125px;
                float: left;
                text-align: center;

            }
            .houses:hover{
                box-shadow: 0 0 3px 3px silver;
            }
            .houses img{
                width: 100%;
            }
            .houses .house-title{
                font-weight: bold;
                color: darkblue;
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
                color: darkblue;
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




            footer {
                margin-top: 110px;
                background-color: #333;
                color: #fff;
                padding: 20px;
                text-align: center;
            }

            @keyframes showup {
                0% {
                    opacity: 0;
                }

                20% {
                    opacity: 1;
                }

                80% {
                    opacity: 1;
                }

                100% {
                    opacity: 0;
                }
            }

            @keyframes slidein {
                0% {
                    margin-left: -800px;
                }

                20% {
                    margin-left: -800px;
                }

                35% {
                    margin-left: 0px;
                }

                100% {
                    margin-left: 0px;
                }
            }

            @keyframes reveal {
                0% {
                    opacity: 0;
                    width: 0px;
                }

                20% {
                    opacity: 1;
                    width: 0px;
                }

                30% {
                    width: 290px;
                }

                80% {
                    opacity: 1;
                }

                100% {
                    opacity: 0;
                    width: 290px;
                }

            }

            /*Introduction Part Css*/
            .main_text_container_inner2{
                margin-left: 50px;
            }

            .main_text_container_inner2  h1 {
                font-family: "roboto";
                font-size: 30px;
                max-width: 40ch;
                text-align: left;
                transform: scale(0.94);
                animation: scale 130s forwards cubic-bezier(0.5, 1, 0.89, 1);
            }
            @keyframes scale {
                100% {
                    transform: scale(1);
                }
            }

            .main_text_container_inner2 span {
                display: inline-block;
                opacity: 0;
                filter: blur(4px);
            }

            .main_text_container_inner2 span:nth-child(1) {
                animation: fade-in 0.8s 0.1s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(2) {
                animation: fade-in 0.8s 0.2s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(3) {
                animation: fade-in 0.8s 0.3s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(4) {
                animation: fade-in 0.8s 0.4s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(5) {
                animation: fade-in 0.8s 0.5s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(6) {
                animation: fade-in 0.8s 0.6s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(7) {
                animation: fade-in 0.8s 0.7s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(8) {
                animation: fade-in 0.8s 0.8s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(9) {
                animation: fade-in 0.8s 0.9s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(10) {
                animation: fade-in 0.8s 1s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2  span:nth-child(11) {
                animation: fade-in 0.8s 1.1s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(12) {
                animation: fade-in 0.8s 1.2s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(13) {
                animation: fade-in 0.8s 1.3s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(14) {
                animation: fade-in 0.8s 1.4s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(15) {
                animation: fade-in 0.8s 1.5s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            .main_text_container_inner2 span:nth-child(16) {
                animation: fade-in 0.8s 1.6s forwards cubic-bezier(0.11, 0, 0.5, 0);
            }

            @keyframes fade-in {
                100% {
                    opacity: 1;
                    filter: blur(0);
                }
            }
            .search-box {
                margin-left: 10px;
                display: flex;
                align-items: center;
            }

            .search-box form {
                display: flex;
                align-items: center;
            }

            .search-box input[type="text"] {
                width: 200px;
                height: 25px;
                padding: 5px;
                border-radius: 5px;
                border: none;
                font-size: 16px;
                margin-right: 5px;
            }

            .search-box button[type="submit"] {
                background-color: white;
                color: #333;
                border-radius: 4px;
                cursor: pointer;
                height: 25px;
                width: 50px;
                border: none;
                font-size: 16px;
            }


        </style>



    </head>

    <body>
        <div class="main_container">

            <nav>
                <!--Navigation bar -->
                <div class="logo">
                    <h1>RoomLess</h1>       
                </div>

                <!--for inserting logo -->
                <ul>

                    <li><a class="active" href="#">Home</a></li>
                    <li><a href="admin?page=listroom">Rental Listing</a></li>
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
            <!-- <div class="home_page_image1">
    
                <img src="//background.jpg" alt=" loading Image" width="100%" height="520px">
    
                <div class="main_text_container">
                    <div class="main_text_container_inner1">
                        <div class="first_text">RoomLess</div>
    
                    </div>
    
                    <div class="main_text_container_inner2">
                        <h1>
                            <span>Room bookable directly online</span>
    
                        </h1>
    
                    </div>
                </div>
    
            </div> -->



            <div class="body">
                <div class="fir">
                    <h2>Recently Added</h2>
                </div>
                <div class="first">

                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Room (1)</span><br />
                        <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                        <span class="house-addeds">Price: 3000/month</span><br />
                        <button type="button" class="btn-book"> <a href="CustomerPage/roomdetails.jsp"> Details
                            </a></button>

                    </div>
                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Room (1)</span><br />
                        <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                        <span class="house-addeds">Price: 3000/month</span><br />
                        <button type="button" class="btn-book"> <a href=""> Details </a></button>

                    </div>
                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Room (1)</span><br />
                        <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                        <span class="house-addeds">Price: 3000/month</span><br />
                        <button type="button" class="btn-book"> <a href=""> Details </a></button>

                    </div>



                </div>
                <div class="fir">
                    <h2>Premium Properties</h2>
                </div>
                <div class="first">

                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Flat</span><br />
                        <span class="house-added">1BHK</span><br />
                        <span class="house-location">Location: Sano Thimi, Bhaltapur Nepal</span><br />
                        <button type="button" class="btn-book"> <a href=""> View Details </a></button>

                    </div>
                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Flat</span><br />
                        <span class="house-added">1BHK</span><br />
                        <span class="house-location">Location: Sano Thimi, Bhaltapur Nepal</span><br />
                        <button type="button" class="btn-book"> <a href=""> View Details </a></button>

                    </div>
                    <div class="houses">
                        <img src="CustomerPage/background.jpg" />
                        <span class="house-title">Flat</span><br />
                        <span class="house-added">1BHK</span><br />
                        <span class="house-location">Location: Sano Thimi, Bhaltapur Nepal</span><br />
                        <button type="button" class="btn-book"> <a href=""> View Details </a></button>

                    </div>

                </div>
                <div class="fir">
                    <h2>Why RoomLess</h2><br><bR>
                    <h3>Get a complete update on Rental and Sale of Property</h3>
                </div>
                <div class="why">
                    <div class="box">
                        <h2>Easily Listing</h2>
                        <p>Comprehensive listing for affordable rental places in your locality</p>
                    </div>
                    <div class="box">
                        <h2>Customer Support</h2>
                        <p>Dedicated support line to help you find the right rental accommodation</p>
                    </div>
                    <div class="box">
                        <h2>Happy Customers</h2>
                        <p>Happy Customers who found a new home for rent using RoomLess.</p>
                    </div>

                </div>
                <div class="fir">
                    <h2>About Us</h2>
                </div>
                <div class="about">
                    <div id="left" class="about_left">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam, voluptate aspernatur possimus
                            similique sunt incidunt itaque dolorum magni? Inventore, nesciunt voluptatum sit deserunt
                            doloribus quidem quia cupiditate in aperiam perferendis eveniet at iusto nulla rerum ex
                            molestias temporibus illo. Nemo deserunt itaque possimus provident eum molestias perspiciatis,
                            excepturi magni porro debitis harum praesentium, in cumque vitae voluptatum labore illum
                            consequatur est aperiam a. Consequatur ratione officiis nam libero nesciunt itaque accusantium
                            expedita vitae? Sed, quod libero unde voluptatem minima at veritatis iste aspernatur provident.
                            Fuga laboriosam maiores dolorum quam expedita ipsum cum ullam ut! Dolorem voluptates, eaque eum
                            sit beatae doloribus magnam facere corporis debitis sapiente. Nisi eum eos recusandae, deserunt
                            delectus officiis quas assumenda. Velit quibusdam voluptatem placeat praesentium. Illum
                            consequuntur qui libero. Debitis..</p>
                    </div>
                    <div id="right" class="about_left">
                        <img src="CustomerPage/background.jpg" alt=" check your internet" height="350px" width="500px">
                    </div>
                </div>

                <footer>
                    <p>&copy; 2023 Dashboard Page</p>
                </footer>



                </body>


                </html>
