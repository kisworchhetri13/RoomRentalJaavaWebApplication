<%-- 
    Document   : changepassword
    Created on : Apr 7, 2023, 12:23:51 AM
    Author     : nitro 5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="login-box">
      <h2>Change Password</h2>
      
      <form action="../admin?page=changingpassword" method="post">
          
       
          <div class="user-box">
          <input type="password" name="oldpassword" required="">
          <label>Old Password</label>
        </div>
        <div class="user-box">
          <input type="password" name="newpassword" required="">
          <label>New Password</label>
        </div>
        <button class="btn" type="submit">Submit</button>
        
    </div>
    </body>
    <style>
        * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: sans-serif;
}

body {
  background: #ecf0f3;
}

.login-box {
  width: 400px;
  height: 500px;
  background: #fff;
  color: #000;
  top: 50%;
  left: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  box-shadow: 0 5px 15px rgba(0,0,0,.3);
  padding: 70px 30px;
  border-radius: 20px;
}

.login-box h2 {
  margin: 0;
  padding: 0 0 20px;
  text-align: center;
  font-size: 28px;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #000;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #000;
  outline: none;
  background: transparent;
}

.login-box .user-box label {
  position: absolute;
  top: 0;
  left: 0;
  font-size: 16px;
  color: #000;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #000;
  font-size: 14px;
}

.login-box button {
  border: none;
  outline: none;
  width: 100%;
  height: 50px;
  background: #3498db;
  color: #fff;
  font-size: 18px;
  border-radius: 20px;
  cursor: pointer;
  transition: .5s;
  margin-top: 80px;
}

.login-box button:hover {
  background: #5a5a5a;
}




    </style>
</html>

