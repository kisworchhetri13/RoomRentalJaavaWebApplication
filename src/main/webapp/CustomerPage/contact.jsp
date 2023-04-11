<%-- 
    Document   : contact
    Created on : Apr 9, 2023, 2:53:20 PM
    Author     : nitro 5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room Rental</title>
         <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    </head>
    <style>

*{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
.contact{
    position: relative;
    min-height: 100vh;
    padding: 50px 100px;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background-color: #333;
}
.contact .content{
    max-width: 800px;
    text-align: center;
}
.content h1{
    font-size: 36px;
    font-weight: 700;
    color: black;
    text-align: center;
}

.container{
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;
}
.contactinfo{
    width: 50%;
    display: flex;
    flex-direction: column;    
}
.box{
    position: relative;
    padding: 20px 0;
    display: flex;
}
.icon{
    min-width: 60px;
    height: 60px;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    font-size: 22px;
}
.text{
    display: flex;
    margin-left: 20px;
    font-size: 16px;
    color: black;
    flex-direction: column;
    font-weight: 300;
}
.text h3,p{
    font-weight: 700;
    color: white;
}
.contactform{
    width: 40%;
    padding: 40px;
    background: #fff;
}
.contactform h2{
    font-size: 30px;
    color: #333;
    font-weight: 500;
}
.inputbox{
    position: relative;
    width: 100%;
    margin-top: 10px;
}
.inputbox input,
.inputbox textarea{
    width: 100%;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    border: none;
    border-bottom: 2px solid#333;
    outline: none;
    resize: none;
}
.inputbox span{
    position: absolute;
    left: 0;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    pointer-events: none;
    transition: 0.5s;
    color: #666;

}
.inputbox input:focus~span,
.inputbox input:valid~span,
.inputbox textarea:focus~span,
.inputbox textarea:valid~span
{
    color: #e91e63;
    font-size: 12px;
    transform: translateY(-20px);
}
.inputbox input[type="submit"] {
    width: 100px;
    background: #00bcd4;
    color: #fff;
    border: none;
    cursor: pointer;
    padding: 10px;
    font-size: 18px;
}
.contact{
    padding: 50px;
}
.container{
    flex-direction: column;
}
.contactinfo{
    margin-bottom: 40px;
}
.contactinfo,
.contactform
{
    width: 100%;
}



    </style>
    <body>
        <div class="content">
            <h1>Contact Us</h1>
            
        </div>
        <section class="contact">
        <div class="container">
            <div class="contactinfo">
                <div class="box">
                    <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Address</h3>
                        <p>111 Alfada Road,<br>Dhobighat, Lalitpur<br>55555</p>
                    </div>
                </div>
                 <div class="box">
                    <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Phone</h3>
                        <p>507-475-6094</p>
                    </div>
                </div>
                 <div class="box">
                    <div class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Email</h3>
                        <p>roomrental@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="contactform">
                <form action="contactdatabase.jsp">
                    <h1>Send Message</h1>
                    <div class="inputbox">
                        <input type="text" name="name" required="your Name">
                        <span>Full Name</span>
                    </div>
                    <div class="inputbox">
                        <input type="text" name="email" required="your Email">
                        <span>Email</span>
                    </div>
                    <div class="inputbox">
                        <textarea name="textarea" required="required"></textarea>
                        <span>Type Your Message....</span>
                    </div>
                    <div class="inputbox">
                        <input type="submit" name="" value="send">                      
                    </div>
                </form>
                
            </div>
        </div>
        </section>
    </body>
</html>
