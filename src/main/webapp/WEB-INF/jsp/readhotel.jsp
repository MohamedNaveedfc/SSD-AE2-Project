<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-dark text-center " style="background:white;">Read Hotel</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>AddressL1</th>
            <th>AddressL2</th>
            <th>Country</th>
            <th>Number_of_employees</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="hotel" items="${hotels}">
            <tr>
                <td>${hotel.id}</td>
                <td>${hotel.name}</td>
                <td>${hotel.addressline1}</td>
                <td>${hotel.addressline2}</td>
                <td>${hotel.country}</td>
                <td>${hotel.numberofemployees}</td>
                <td><a class="btn btn-warning" href="/update-hotel/${hotel.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-hotel/${hotel.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a class="btn btn-Primary" href="/create-hotel">Create hotel details</a>
</body></center>
<script src="/js/bootstrap.js"></script>