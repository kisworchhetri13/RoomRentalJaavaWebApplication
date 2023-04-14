<%-- 
    Document   : booknow
    Created on : Mar 30, 2023, 3:52:42 PM
    Author     : nitro 5
--%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        .box{
            height: 615px;
            width: 100%;
            background-color: #333;
            margin-top: 10px;
        }
        form{
            margin-left: 480px;
            border: 1px solid #ccc;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
			margin-bottom: 20px;
            width: 500px;
        }
        label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
            color: white;
		}
        input[type="text"], input[type="number"] {
			padding: 5px;
			border-radius: 5px;
			border: 1px solid #ccc;
			width: 450px;
			margin-bottom: 20px;
			box-sizing: border-box;
			font-size: 16px;
		}
        input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			padding: 10px 20px;
			border-radius: 5px;
			border: none;
			cursor: pointer;
			font-size: 16px;
            margin-left: 200px;
		}
        input[type="submit"]:hover {
			background-color: #3e8e41;
		}
        .gap{
            height: 100px;
            width: 100%;
        }
        footer {
            margin-top: 10px;
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
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
            <li><a  class="active" href="#">Rental Listing</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
           

            

            <div class="account-icon" id="account_icon">
                <i class="fa fa-user-circle"></i>
                <!--Adding the icon of user -->

            </div>


        </ul>
    </nav>
    <div class="box">
        <div class="gap">

        </div>
        <form action="../admin?page=bookingdetail" method="post">
           
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required>
    
            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>
    
            <label for="contact">Contact Number:</label>
            <input type="text" id="contact" name="contact" required>
    
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            <BR>
    
            <input type="submit" value="Submit">
        </form>
    </div>

</body>
<footer>
    <p>&copy; 2023 RoomLess</p>
</footer>
</html>