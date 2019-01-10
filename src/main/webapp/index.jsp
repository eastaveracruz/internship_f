<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>title</title>
  <style type="text/css">
    h1 div {
      font-family: Arial, Helvetica;
    }
    a {
      size: 30px;
      color: indianred;
    }
  </style>
</head>
<body>

<h1 align="center">Title</h1>
<br/>
<div align="center" tag>
  <a href="<c:url value="/pre"/>" target="_blank">PC LIST</a>
  <br>
  <a href="<c:url value="/add"/>" target="_blank">ADD DETAILS</a>
</div>

<br/>
</body>
</html>