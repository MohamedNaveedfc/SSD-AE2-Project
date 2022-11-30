<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-light text-center " style="background:black;">Register</h1>
<form:form method="post" action="/add-customer">
<div class="container">
    <table>
        <tr class = "row">
            <td class="col">First Name: </td>
            <td><form:input class="form-control" path="firstname"/></td>
        </tr>
        <tr class = "row">
            <td class="column">Last Name: </td>
            <td><form:input class="form-control" path="lastname"/></td>
        </tr>
         <tr class = "row">
            <td class="col">Mobile Number: </td>
            <td><form:input class="form-control" path="mobile"/></td>
        </tr>
        <tr class = "row">
            <td class="col">Email: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
        <tr class = "row">
            <td class="column">Password: </td>
            <td><form:input class="form-control" path="password"/></td>
        </tr>
         <tr class = "row">
           <td class="col">Address: </td>
           <td><form:input class="form-control" path="address"/></td>
        </tr>
        <tr class = "row">
            <td class="col">Country: </td>
            <td><form:input class="form-control" path="country"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input class="btn btn-outline-success" type="submit" value="Register"/></td>
        </tr>
<div>
    </table>
</form:form>
</body></center>
<script src="/js/bootstrap.js"></script>