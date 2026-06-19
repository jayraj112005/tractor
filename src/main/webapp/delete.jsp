<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        width: 350px;
        text-align: center;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #e74c3c;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #c0392b;
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
<form action="delete">
    <label>Enter the ID you want to delete</label>
    <input type="text" placeholder="Enter ID" name="id">

    <input type="submit" value="Delete">
</form>

</body>
</html>
