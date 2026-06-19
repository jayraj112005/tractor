<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Registration</title>

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
        justify-content: center;
        align-items: center;
    }

    .form-box {
        background: rgba(255,255,255,0.95);
        padding: 35px 40px;
        width: 380px;
        border-radius: 14px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.3);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #2e7d32;
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="text"]:focus {
        outline: none;
        border-color: #4CAF50;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background: #4CAF50;
        color: white;
        border: none;
        border-radius: 25px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
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
    <h2>Update Registration</h2>

    <form action="update" method="post">

        <label>Enter ID to Update</label>
        <input type="text" placeholder="Enter ID" name="id">

        <input type="submit" value="Update">
    </form>
</div>

</body>
</html>
