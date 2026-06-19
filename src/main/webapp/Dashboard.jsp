<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<style>
body{
    margin:0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(120deg, #89f7fe, #66a6ff);
    min-height:100vh;
}

/* Header */
.header{
    background:#1f2937;
    color:white;
    padding:15px 30px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.header h2{
    margin:0;
}

/* Dashboard Container */
.container{
    padding:30px;
}

/* Welcome Card */
.welcome{
    background:white;
    padding:20px;
    border-radius:15px;
    margin-bottom:25px;
    box-shadow:0 4px 12px rgba(0,0,0,0.15);
}

/* Cards Grid */
.cards{
    display:grid;
    grid-template-columns: repeat(auto-fit, minmax(230px,1fr));
    gap:20px;
    text-decoration:none;
}

/* Card Style */
.card{
    background:white;
    padding:25px;
    border-radius:18px;
    text-align:center;
    box-shadow:0 6px 14px rgba(0,0,0,0.15);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    margin:10px 0;
    font-size:22px;
}

.card p{
    color:#555;
    font-size:15px;
}

/* Colors */
.work{ background: linear-gradient(135deg,#667eea,#764ba2); color:white; }
.earn{ background: linear-gradient(135deg,#43cea2,#185a9d); color:white; }
.paid{ background: linear-gradient(135deg,#f7971e,#ffd200); color:white; }
.pending{ background: linear-gradient(135deg,#ff416c,#ff4b2b); color:white; }

.footer{
    text-align:center;
    margin-top:30px;
    color:white;
    font-size:14px;
}
a{
text-decoration:none;
}
</style>
</head>

<body>

<div class="header">
    <h2>💼 My Work Dashboard</h2>
    <div class="user">
        👤 Welcome, <b><a href="logged">who Logged Here</a></b>
    </div>
</div>

<div class="container">

    <div class="welcome">
        <h2>👋 Hello ${SuccsesMsg}</h2>
        <p>Track your work, earnings and bills easily.</p>
    </div>

   

        <div class="cards">

    <a href="todayWork.jsp" class="card work">
        <h3>📋 Today's Work</h3>
        <p>View and manage your daily tasks</p>
    </a>

    <a href="earnings" class="card earn">
        <h3>💰 Total Earnings</h3>
        <p>Monthly & yearly earnings overview</p>
    </a>

    <a href="paidBills.jsp" class="card paid">
        <h3>✅ Bills Paid</h3>
        <p>Check completed payments</p>
    </a>

    <a href="pendingBills.jsp" class="card pending">
        <h3>⏳ Bills Pending</h3>
        <p>View remaining payments</p>
    </a>

    <a href="totalEntry" class="card entry">
        <h3>📊 Total Entries</h3>
        <p>Total entries till today</p>
    </a>
     <a href="dayByDayEarnings.jsp" class="card entry">
        <h3>💰 total earnings on daily bases</h3>
        <p>choose a day which you want a earnings</p>
    </a>
     <a href="dayByDayEntries.jsp" class="card entry">
        <h3>💰 day by day Entries</h3>
        <p>choose a day which you want a entries</p>
    </a>

</div>

    </div>

    <div class="footer">
        © 2026 Your Dashboard | Designed by You 🚀
    </div>

</div>

</body>
</html>
