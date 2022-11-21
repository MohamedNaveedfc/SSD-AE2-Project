<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<div class="container">
    <div class="card">
<h1 class="text-light text-center " style="background:black;" >Update Package</h1>
<form:form method="post" action="/update-package/${id}">
    <table>
        <tr>
            <td>Package: </td>
            <td><form:input path="packagename"/></td>
        </tr>
        <tr>
            <td>Package Name: </td>
            <td><form:input path="packagetype"/></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><form:input path="packageprice"/></td>
        </tr>
        <tr>
            <td>Details: </td>
            <td><form:input path="packagedetails"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn btn-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>
    </div>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>