<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Status</title>

<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f2f4f7;
        font-family: Arial, sans-serif;
    }

    .message-box {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        width: 420px;
        text-align: center;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    }

    .success {
        color: #2e7d32;
        background-color: #e8f5e9;
        padding: 12px;
        border-radius: 6px;
        margin-bottom: 15px;
    }

    .error {
        color: #c62828;
        background-color: #ffebee;
        padding: 12px;
        border-radius: 6px;
    }
</style>

</head>
<body>

<div class="message-box">

    <c:if test="${not empty succsesMSG}">
        <h2 class="success">hii this for the ${succsesMSG}</h2>
    </c:if>

    <c:if test="${not empty errorMSG}">
        <h2 class="error"> invalid creditetials ${errorMSG}</h2>
    </c:if>

</div>

</body>
</html>
