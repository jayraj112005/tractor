<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Work Records</title>

<link rel="stylesheet" 
href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">

<style>
body {
    background: #f5f7fb;
}

.container {
    margin-top: 40px;
}

.btn {
    padding: 6px 14px;
    border-radius: 6px;
    font-size: 13px;
    font-weight: 600;
}

.btn-edit {
    background-color: #28a745;
    color: white;
}

.btn-edit:hover {
    background-color: #218838;
}

.btn-delete {
    background-color: #dc3545;
    color: white;
}

.btn-delete:hover {
    background-color: #b52a37;
}
</style>
</head>

<body>

<div class="container">

<h3 class="text-center mb-4">Farmer Work Records</h3>

<table class="table table-bordered table-hover text-center">
  <thead class="thead-dark">
    <tr>
      <th>Sr No</th>
      <th>Date</th>
      <th>Farmer Name</th>
      <th>Land Name</th>
      <th>Work</th>
      <th>Area (Guntha)</th>
      <th>Bill (₹)</th>
      <th>Action</th>
    </tr>
  </thead>

  <tbody>
    <c:forEach var="te" items="${totalEntries}">
      <tr>
        <td>${te.srno}</td>
        <td>${te.date}</td>
        <td>${te.landHolder}</td>
        <td>${te.landname}</td>
        <td>${te.work}</td>
        <td>${te.guntha}</td>
        <td>${te.bill}</td>
        <td>

          <form action="update" method="post" style="display:inline;">
            <input type="hidden" name="id" value="${te.srno}">
            <button type="submit" class="btn btn-edit">Paid</button>
          </form>

          <form action="delete" method="post" style="display:inline;">
            <input type="hidden" name="id" value="${te.srno}">
            <button type="submit" class="btn btn-delete">Unpaid</button>
          </form>

        </td>
      </tr>
    </c:forEach>
  </tbody>

</table>

</div>

</body>
</html>
