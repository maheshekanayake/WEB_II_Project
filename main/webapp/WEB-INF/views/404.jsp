<%--
  Created by IntelliJ IDEA.
  User: Mahesh
  Date: 8/2/2023
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">



</head>
<body>

<div class="text-center mt-5">
    <h1 class="fs-1">Error Page</h1>
<img src="assets/images/404/404.png" class="text-center" />
</div>
<div class="text-center my-5">

    <p class="fs-2 text-danger">${it}</p>
    <a href="home" class="btn btn-outline-dark btn-lg">Back to Home</a>
</div>
</body>
</html>
