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
        height: 100vh;
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                    url("https://images.unsplash.com/photo-1501004318641-b39e6451bec6");
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, Helvetica, sans-serif;
    }

    .msg-box {
        background: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        width: 420px;
        text-align: center;
    }

    .success {
        color: #2e7d32;
        font-size: 22px;
        margin-bottom: 15px;
        font-weight: bold;
    }

    .error {
        color: #c62828;
        font-size: 22px;
        font-weight: bold;
    }
   
</style>

</head>
<body>

<div class="msg-box">

    <% if (request.getAttribute("updateSuccsesMsg") != null) { %>
        <div class="success">${updateSuccsesMsg}</div>
        
        <button ><a href="index.jsp" style="text-decoration:none;color:black"> Go to home</a></button>
    <% } %>
    <% if (request.getAttribute("updateErrorMsg") != null) { %>
        
        <div class="error">${updateErrorMsg}</div>
        <button ><a href="index.jsp" style="text-decoration:none;color:black"> Go to home</a></button>
    <% } %>
</div>


</body>
</html>