<%-- 
    Document   : login
    Created on : Mar 27, 2023, 10:35:51 AM
    Author     : nitro 5
--%>

<%-- 
    Document   : index.jsp
    Created on : Mar 20, 2023, 6:14:58 PM
    Author     : nitro 5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="login-box">
      <h2>Login Here</h2>
      <form action="admin?page=login" method="post">
        <div class="user-box">
          <input type="text" name="username" required="">
          <label>Username</label>
        </div>
        <div class="user-box">
          <input type="password" name="password" required="">
          <label>Password</label>
        </div>
        <button class="btn" type="submit">Login</button>
        <a href="#" class="forgot-password">Forgot Password?</a>
        <a href="CustomerPage/register.jsp" class="register-new-account">Register New Account</a>
      </form>
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
}

.login-box button:hover {
  background: #5a5a5a;
}

.login-box .forgot-password, .register-new-account {
  display: block;
  margin-top: 20px;
  text-align: center;
  font-size: 14px;
  color: #000;
  text-decoration: none;
}

.login-box .forgot-password:hover, .register-new-account:hover {
  color: #3498db;
}

    </style>
</html>

