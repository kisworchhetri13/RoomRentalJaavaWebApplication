<%-- 
    Document   : rentallisting
    Created on : Mar 30, 2023, 11:10:55 AM
    Author     : nitro 5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
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

.body{
    width: 100%;
    height: 1600px;
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

            <li><a  href="../CustomerPage/homepage.jsp">Home</a></li>
            <li><a class="active" href="#">Rental Listing</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">About Us</a></li>
            <li><input type="submit" value="Login"></li>
            <li><input type="submit" value="Register"></li>

            

            <div class="account-icon" id="account_icon">
                <i class="fa fa-user-circle"></i>
                <!--Adding the icon of user -->

            </div>

        </ul>
    </nav>
    <div class="body">
        <div class="fir">
            <h2>List of The Available Rooms</h2>
        </div>
        <div class="first">
            
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href="../CustomerPage/roomdetails.jsp"> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>   
        </div>

        <!-- second -->
        <div class="first">
            
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>   
        </div>
        <!-- third -->
        <div class="first">
            
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>   
        </div>
        <!-- fourth -->
        <div class="first">
            
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>
            <div class="houses">
                <img src="background.jpg" />
                <span class="house-title">Room (1)</span><br />
                <span class="house-location">Location: Ekantakuna, Kathmandu</span><br />
                <span class="house-addeds">Price: 3000/month</span><br />
                <button type="button" class="btn-book" > <a href=""> Details </a></button>
                
            </div>   
        </div>
        
      
    </div>
    <footer>
        <p>&copy; 2023 Dashboard Page</p>
    </footer>
</body>
</html>
