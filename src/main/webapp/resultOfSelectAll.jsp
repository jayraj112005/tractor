<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
.btn {
    text-decoration: none;
    padding: 8px 14px;
    border-radius: 6px;
    font-size: 14px;
    font-weight: 600;
    display: inline-block;
    margin: 2px;
    transition: 0.3s ease;
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
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">username</th>
      <th scope="col">userGamil</th>
      <th scope="col">contactNO</th>
      <th scope="col">tractor_Name</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
 
     <c:forEach var="r" items="${register}">
<tr>
    <td>${r.id}</td>
    <td>${r.userName}</td>
    <td>${r.userGmail}</td>
    <td>${r.contactNo}</td>
    <td>${r.tractorName}</td>
    
     <td>
    <form action="update" style="display:inline;">
    <input type="hidden" name="id" value="${r.id}">
    <button type="submit" class="btn btn-edit">Edit</button>
</form>
<form action="delete" style="display:inline;">
    <input type="hidden" name="id" value="${r.id}">
    <button type="submit" class="btn btn-edit">delete</button>
</form></td>
</tr>
</c:forEach>
       
   </tbody>
</table>
</body>
</html>