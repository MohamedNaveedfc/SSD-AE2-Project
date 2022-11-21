<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<div class="container">
<h1 class="text-light text-center " style="background:black;">Create Feedback</h1>
<form:form method="post" action="/create-feedback">
    <table>
        <tr class = "row">
            <td>First Name: </td>
            <td><form:input class="form-control" path="name"/></td>
        </tr>
         <tr class = "row">
            <td>Email: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
         <tr class = "row">
            <td>Your Message: </td>
            <td><form:input class="form-control" path="message"/></td>
        </tr>
         <tr class = "row">
            <td>Ratings from A,B or C: </td>
            <td><form:input class="form-control" path="ratingsforthehotel"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input class="btn btn-outline-success" type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>