<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">${register.id}</th>
      <td>${register.userName}</td>
      <td>${register.userGmail}</td>
      <td>${register.contactNo}</td>
      <td> ${register.tractorName}</td>
    </tr>
  </tbody>
</table>
</body>
</html>