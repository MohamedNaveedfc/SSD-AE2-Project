<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<div class="container">
<h1 class="text-light text-center " style="background:black;" >Update Customer</h1>
<form:form method="post" action="/update-customer/${id}">
    <table>
        <tr class="row">
            <td>First Name: </td>
            <td><form:input class="form-control" path="firstname"/></td>
        </tr>
        <tr class="row">
            <td>Last Name: </td>
            <td><form:input class="form-control" path="lastname"/></td>
        </tr>
        <tr class="row">
            <td>Mobile Number: </td>
            <td><form:input class="form-control" path="mobile"/></td>
        </tr>
        <tr class="row">
            <td>Email: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
        <tr class="row">
            <td>Password: </td>
            <td><form:input class="form-control" path="password"/></td>
        </tr>
        <tr class="row">
            <td>Address: </td>
            <td><form:input class="form-control" path="address"/></td>
        </tr>
        <tr class="row">
            <td>Country: </td>
            <td><form:input class="form-control" path="country"/></td>
        </tr>
        <tr class="row">
            <td></td>
            <td><input class="btn btn-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>