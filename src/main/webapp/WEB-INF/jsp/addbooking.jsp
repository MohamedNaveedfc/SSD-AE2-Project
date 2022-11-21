<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<div class="container">
    <div class="card">
        <h1 class="text-light text-center " style="background:black;"> Booking Form</h1>
            <form:form method="post" action="/add-booking">
                <table>
                <tr>
                    <td>Employee Name: </td>
                    <td><form:input path="employeename"/></td>
                 <tr>
                 </tr>
                    <td>Customer Id: </td>
                    <td><form:input path="customerid"/></td>
                 <tr>
                 </tr>
                    <td>Package Id: </td>
                    <td><form:input path="packageid"/></td>
                 <tr>
                 </tr>
                    <td>Booked On: </td>
                    <td><form:input path="bookedon"/></td>
                 <tr>
                 </tr>
                    <td>Number of days: </td>
                    <td><form:input path="numberofdays"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn btn-outline-success"type="submit" value="Book"/></td>
                </tr>
            </table>
        </form:form>
    </div>
 </div>
</body></center>
<script src="/js/bootstrap.js"></script>