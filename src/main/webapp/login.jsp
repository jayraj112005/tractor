<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
    body {
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #e8f5e9; /* change color here */
    font-family: Arial, sans-serif;
}

    .login-box {
        background-color: #fff;
        padding: 30px 35px;
        border-radius: 10px;
        width: 350px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .login-box h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border-radius: 5px;
        border: 1px solid #ccc;
        outline: none;
        font-size: 14px;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #1d976c;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #1d976c;
        color: white;
        border: none;
        padding: 12px;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #148f5b;
    }
</style>

</head>
<body>

<div class="login-box">
    <h2>User Login</h2>

    <form action="login" method="post">
        <label>Enter Registered Email</label>
        <h2>${errorMsg}</h2>
        <input type="text" placeholder="Enter your email" name="mail">

        <label>Enter Password</label>
        <input type="password" placeholder="Enter your password" name="password">

        <input type="submit" value="Log In">
        <h1> hello jayraj</h1>
    </form>
</div>

</body>
</html>
