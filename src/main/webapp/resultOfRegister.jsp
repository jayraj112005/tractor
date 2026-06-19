<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Status</title>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        background: linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
                    url("https://images.unsplash.com/photo-1501004318641-b39e6451bec6");
        background-size: cover;
        background-position: center;
        font-family: Arial, Helvetica, sans-serif;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .message-box {
        background: rgba(255, 255, 255, 0.95);
        padding: 40px 45px;
        border-radius: 14px;
        width: 420px;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0,0,0,0.35);
        animation: fadeIn 0.8s ease-in-out;
    }

    .success {
        color: #2e7d32;
        font-size: 24px;
        margin-bottom: 15px;
    }

    .error {
        color: #c62828;
        font-size: 22px;
        margin-bottom: 15px;
    }

    .icon {
        font-size: 50px;
        margin-bottom: 15px;
    }

    .btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 30px;
        background: #4CAF50;
        color: #fff;
        text-decoration: none;
        border-radius: 25px;
        transition: 0.3s;
        font-size: 15px;
    }

    .btn:hover {
        background: #43a047;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>

<div class="message-box">

    <% if (request.getAttribute("successMsg") != null) { %>
        <div class="icon">🌱</div>
        <div class="success">${successMsg}</div>
    <% } %>

    <% if (request.getAttribute("errorMsg") != null) { %>
        <div class="icon">⚠️</div>
        <div class="error">${errorMsg}</div>
    <% } %>

    <a href="index.jsp" class="btn">Go to Home</a>

</div>

</body>
</html>