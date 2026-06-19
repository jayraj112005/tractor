<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Earnings Dashboard</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #00c6ff, #0072ff);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        background: #fff;
        padding: 40px 60px;
        border-radius: 15px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    h2 {
        margin: 0;
        color: #555;
        font-size: 22px;
        letter-spacing: 1px;
    }

    h1 {
        margin: 15px 0 0;
        font-size: 48px;
        color: #0072ff;
        font-weight: bold;
    }

    .rupee {
        font-size: 30px;
        vertical-align: top;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(15px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

</head>
<body>

    <div class="card">
        <h2>Total Earnings</h2>
        <h1><span class="rupee">₹</span>${earnings}</h1>
    </div>

</body>
</html>
