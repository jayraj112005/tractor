<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>

<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #43cea2, #185a9d);
        font-family: Arial, sans-serif;
    }

    .container {
        background-color: white;
        padding: 40px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        width: 400px;
    }

    h2 {
        margin-bottom: 25px;
        color: #333;
    }

    input[type="submit"] {
        background-color: #185a9d;
        color: white;
        border: none;
        padding: 12px 30px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #43cea2;
    }
</style>

</head>
<body>

<div class="container">
    <form action="selectAll" >
        <h2>Click here! You get all users who registered here</h2>
        <input type="submit" value="Click">
    </form>
</div>

</body>
</html>
