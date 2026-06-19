<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Status</title>

<style>
    body {
    margin: 0;
    padding: 0;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(135deg, #667eea, #764ba2);
    font-family: Arial, sans-serif;
}

    .update-box {
        background: #ffffff;
        padding: 30px 35px;
        border-radius: 10px;
        width: 420px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    }

    .update-box h2 {
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
        margin-bottom: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #1976d2;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #1976d2;
        color: white;
        border: none;
        padding: 12px;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #125aa3;
    }
</style>

</head>
<body>

<div class="update-box">
    <h2>Update User Details</h2>

    <form action="updateData" method="post">

        <label>ID</label>
        <input type="text" value="${register.id}" name="id" >

        <label>User Name</label>
        <input type="text" value="${register.userName}" name="userName">

        <label>Email</label>
        <input type="text" value="${register.userGmail}" name="userGamil">

        <label>Contact Number</label>
        <input type="text" value="${register.contactNo}" name="contactNo">

        <label>Password</label>
        <input type="password" value="${register.password}" name="password">

        <label>Tractor Name</label>
        <input type="text" value="${register.tractorName}" name="tractorName">

        <input type="submit" value="Update">

    </form>
</div>

</body>
</html>
