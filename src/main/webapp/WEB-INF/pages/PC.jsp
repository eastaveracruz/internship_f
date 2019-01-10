<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List PC details</title>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>
<h1 align="center">Search</h1>
<form:form action="/search" commandName="PC">
    <table align="center">
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">

                <input type="submit"
                       value="<spring:message text="Search"/>"/>

            </td>
        </tr>
    </table>
</form:form>

<h1 align="center">List PC details </h1>

<div align="center">
    <form:form action="/PC/0" commandName="param" method="get">
        <form:select path="sortParam">
            <form:option value="id">id</form:option>
            <form:option value="name">name</form:option>
            <form:option value="opt">opt</form:option>
            <form:option value="need">need</form:option>
        </form:select>
        <input type="submit"
               value="<spring:message text="Sort"/>"/>
    </form:form>
</div>


<c:if test="${!empty listPC}">
    <table class="tg" align="center">
        <tr>
            <th width="30">ID</th>
            <th width="220">Name</th>
            <th width="120">Quantity</th>
            <th width="60">Need</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listPC}" var="book">
            <tr>
                <td>${book.id}</td>
                <td><p>${book.name} ${book.opt}</p></td>
                <td>${book.quan}</td>
                <td>
                    <c:if test="${book.need  == 1}">
                        +
                    </c:if>
                    <c:if test="${book.need  != 1}">
                        -
                    </c:if>
                </td>
                <td><a href="<c:url value='/edit/${book.id}'/>" target="_blank">Edit</a></td>
                <td><a href="<c:url value='/remove/${book.id}/${page}'/>">Delete</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6">Можно собрать ${countPC} компьютеров</td>
        </tr>
    </table>
</c:if>
<br>
<br>
<div align="center">
    <c:if test="${page > 0}">
        <a href="/PC/${page - 1}">previous</a> -
    </c:if>

    <c:if test="${!empty listPC}">
        <a href="/PC/${page + 1}">next</a>
    </c:if>
</div>

</body>
</html>
