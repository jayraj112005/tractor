<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>AgroGrow | Smart Agriculture</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      height: 100vh;
      background: linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
        url("https://images.unsplash.com/photo-1501004318641-b39e6451bec6");
      background-size: cover;
      background-position: center;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #fff;
    }

    .container {
      text-align: center;
      padding: 40px;
      max-width: 700px;
    }

    h1 {
      font-size: 3rem;
      margin-bottom: 15px;
      letter-spacing: 1px;
    }

    p {
      font-size: 1.2rem;
      margin-bottom: 35px;
      line-height: 1.6;
      color: #e0e0e0;
    }

    .btn-group {
      display: flex;
      justify-content: center;
      gap: 20px;
    }

    .btn {
      padding: 14px 40px;
      font-size: 1rem;
      border-radius: 30px;
      border: none;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn-register {
      background-color: #4CAF50;
      color: white;
    }

    .btn-register:hover {
      background-color: #43a047;
      transform: translateY(-2px);
    }

    .btn-login {
      background-color: transparent;
      color: white;
      border: 2px solid #ffffff;
    }

    .btn-login:hover {
      background-color: white;
      color: #333;
      transform: translateY(-2px);
    }

    @media (max-width: 600px) {
      h1 {
        font-size: 2.2rem;
      }
      p {
        font-size: 1rem;
      }
      .btn-group {
        flex-direction: column;
      }
    }
    /* Left Sidebar */
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

/* Push main content to the right */
.container {
  margin-left: 220px;
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
  <div class="container">
    <h1>Smart Farming for a Better Tomorrow</h1>
    <p>
      Empowering farmers with modern agricultural solutions.
      Experience technology-driven farming with powerful machinery
      and smarter decisions.
    </p>

    <div class="btn-group">
     <a href="register.jsp"><button class="btn btn-register">Register</button></a> 
     <a href="login.jsp"><button class="btn btn-login">Login</button></a>
    </div>
  </div>
</body>









</html>
