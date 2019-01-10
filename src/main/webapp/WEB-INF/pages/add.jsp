<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>

</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<div align="center">
    <h1>Add</h1>
    <c:url var="addAction" value="/PC/add"/>
    <form:form action="${addAction}" commandName="book">
        <table>
            <c:if test="${!empty book.name}">
                <tr>
                    <td>
                        <form:label path="id">
                            <spring:message text="ID"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="id" readonly="true" disabled="true"/>
                        <form:hidden path="id"/>
                    </td>
                </tr>
            </c:if>
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
                <td>
                    <form:label path="opt">
                        <spring:message text="opt"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="opt"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="quan">
                        <spring:message text="quan"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="quan"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="need">
                        <spring:message text="need"/>
                    </form:label>
                </td>
                <td>
                    <form:select path="need">
                        <form:option value="1">+</form:option>
                        <form:option value="0">-</form:option>
                    </form:select>
                        <%--<form:input path="need"/>--%>
                </td>
                <td colspan="2">

                    <input type="submit"
                           value="<spring:message text="Add"/>"/>

                </td>
            </tr>
        </table>
    </form:form>
</div>

</body>
</html>
