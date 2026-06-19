<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agriculture Work Form</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(to right, #a8e063, #56ab2f);
    display: flex;
    justify-content: center;
    align-items: center;
}

.form-container {
    background: #fff;
    padding: 30px 35px;
    border-radius: 12px;
    width: 420px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

.form-container h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #2e7d32;
}

.form-group {
    margin-bottom: 14px;
}

.form-group label {
    font-weight: 600;
    display: block;
    margin-bottom: 6px;
    color: #333;
}

.form-group input {
    width: 100%;
    padding: 9px 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    outline: none;
    transition: 0.3s;
}

.form-group input:focus {
    border-color: #4caf50;
    box-shadow: 0 0 5px rgba(76,175,80,0.5);
}

.btn-submit {
    width: 100%;
    background: #2e7d32;
    color: #fff;
    border: none;
    padding: 11px;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

.btn-submit:hover {
    background: #1b5e20;
}
.btn-exit {
    width: 100%;
    background:red;
    color: #fff;
    border: none;
    padding: 11px;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
    margin-top:1.5px;
    text=align:center;
}

.btn-exit:hover {
    background: red;
}

</style>
</head>

<body>

<div class="form-container">
    <h2>🌾 Agriculture Work Entry</h2>
     <h3 style=""color:green">${ succsesMsg}</h3>
     <h2 style=""color:red">${ errorMsg}</h2>
     
    <form action="insertDailyWork" >

        <div class="form-group">
            <label>Sr No</label>
            <input type="text" placeholder="Enter Sr No" name="srno">
        </div>

        <div class="form-group">
            <label>Date</label>
            <input type="date" name="date">
        </div>

        <div class="form-group">
            <label>Name of Land Holder</label>
            <input type="text" placeholder="Enter Land Holder Name" name="holder">
        </div>

        <div class="form-group">
            <label>Land Name</label>
            <input type="text" placeholder="Enter Land Name" name="landname">
        </div>

        <div class="form-group">
            <label>Type of Work</label>
            <input type="text" placeholder="Rotavator / Harvesting / Ploughing" name="work">
        </div>

        <div class="form-group">
            <label>Guntha</label>
            <input type="text" placeholder="Enter Area in Guntha" name="guntha">
        </div>

        <div class="form-group">
            <label>Total Bill</label>
            <input type="text" placeholder="Enter Total Bill" name="bill">
        </div>

            <input type="submit"  class="btn-submit" value="submit" ><br><br>
<button type="button" class="btn-exit" onclick="location.href='Dashboard.jsp'">
   Exit
</button>
            
    </form>
</div>

</body>
</html>
