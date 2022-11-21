<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<div class="container">
    <div class="card">
<h1 class="text-light text-center " style="background:black;" >Update Hotel Informations</h1>
<form:form method="post" action="/update-hotel/${id}">
    <table>
        <tr>
            <td>Hotel Name: </td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td>Address Line 1: </td>
            <td><form:input path="addressline1"/></td>
        </tr>
        <tr>
            <td>Address Line 2 : </td>
            <td><form:input path="addressline2"/></td>
        </tr>
        <tr>
             <td>Country : </td>
             <td><form:input path="country"/></td>
        </tr>
        <tr>
             <td>Number of employees : </td>
             <td><form:input path="numberofemployees"/></td>
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