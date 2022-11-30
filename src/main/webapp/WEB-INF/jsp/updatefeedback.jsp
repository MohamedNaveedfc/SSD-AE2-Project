<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">

<h1 class="text-light text-center " style="background:black;" >Update Feedback</h1>
<form:form method="post" action="/update-feedback/${id}">
    <table>
        <tr class="row">
            <td>Name: </td>
            <td><form:input class="form-control" path="name"/></td>
        </tr>
        <tr class="row">
            <td>Email: </td>
            <td><form:input class="form-control" path="email"/></td>
        </tr>
        <tr class="row">
            <td>Message: </td>
            <td><form:input class="form-control" path="message"/></td>
        </tr>
        <tr class="row">
            <td>Ratings: </td>
            <td><form:input class="form-control" path="ratingsforthehotel"/></td>
        </tr>

        <tr class="row">
            <td></td>
            <td><input class="btn btn-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>

</body></center>
<script src="/js/bootstrap.js"></script>