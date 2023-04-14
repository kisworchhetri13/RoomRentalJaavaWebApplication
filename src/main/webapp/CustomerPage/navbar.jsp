<%-- 
    Document   : navbar
    Created on : Apr 12, 2023, 8:12:53 PM
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