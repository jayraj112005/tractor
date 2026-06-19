<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register | Agriculture Portal</title>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                    url("https://images.unsplash.com/photo-1501004318641-b39e6451bec6");
        background-size: cover;
        background-position: center;
        font-family: Arial, Helvetica, sans-serif;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .form-box {
        background: rgba(255, 255, 255, 0.95);
        padding: 35px 40px;
        width: 380px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    }

    .form-box h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #2e7d32;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        outline: none;
        border-color: #4CAF50;
    }

    .btn {
        width: 100%;
        padding: 12px;
        background: #4CAF50;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 25px;
        cursor: pointer;
        margin-top: 15px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #43a047;
    }
    .sidebar {
  position: fixed;
  left: 0;
  top: 0;
  width: 220px;
  height: 100vh;
  background: rgba(0,0,0,0.75);
  padding: 25px 20px;
  box-shadow: 4px 0 15px rgba(0,0,0,0.4);
}

.sidebar h2 {
  color: #4CAF50;
  margin-bottom: 10px;
  font-size: 22px;
}

.sidebar .user {
  font-size: 14px;
  color: #ddd;
  margin-bottom: 25px;
}
.menu {
  list-style: none;
   text-decoration: none;
}

.menu li {
  padding: 12px 10px;
  margin-bottom: 10px;
  background: rgba(255,255,255,0.08);
  border-radius: 8px;
  cursor: pointer;
  transition: 0.3s;
  font-size: 14px;
}

.menu li:hover {
  background: #4CAF50;
  color: #fff;
}

</style>
</head>
<body>
<div class="sidebar">
  <h2> Tractor registration panel</h2>
  <p class="user">👨‍🌾 Registered User</p>

  <ul class="menu">
    <a href="update.jsp" style=" text-decoration: none;color:white"><li>📝 Update Registration</li></a>
    <a href="delete.jsp" style=" text-decoration: none; color:white"><li>🗑️ Delete Registration</li></a>
     <a href="select.jsp" style=" text-decoration: none;color:white"><li>🔍 Search by ID</li></a>
    <a href="selectAll.jsp" style=" text-decoration: none;color:white"> <li>🔍 All registereed userd</li></a>
  </ul>
</div>
<div class="form-box">
    <h2>Tractor owner Registration</h2>
    <form action="register" method="post">

        <div class="form-group">
            <label>ID</label>
            <input type="text" placeholder="Enter your ID" name="id">
        </div>

        <div class="form-group">
            <label>User Name</label>
            <input type="text" placeholder="Enter username" name="userName">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="text" placeholder="Enter email" name="userGamil">
        </div>

        <div class="form-group">
            <label>Contact Number</label>
            <input type="text" placeholder="Enter contact number" name="contactNo">
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" placeholder="Enter password" name="password">
        </div>

        <div class="form-group">
            <label>Tractor Name</label>
            <input type="text" placeholder="Enter tractor name" name="tractorName">
        </div>

        <input type="submit" value="Register" class="btn">
    </form>
</div>

</body>
</html>