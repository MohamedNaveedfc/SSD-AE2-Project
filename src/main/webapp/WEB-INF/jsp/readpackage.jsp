<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-dark text-center " style="background:white;">Read Package</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Package</th>
            <th>Package Type</th>
            <th>Price</th>
            <th>Details</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="packag" items="${packages}">
            <tr>
                <td>${packag.id}</td>
                <td>${packag.packagename}</td>
                <td>${packag.packagetype}</td>
                <td>${packag.packageprice}</td>
                <td>${packag.packagedetails}</td>
                <td><a class="btn btn-warning" href="/update-package/${packag.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-package/${packag.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a class="btn btn-Primary" href="/add-package">add Package</a>
</body></center>
<script src="/js/bootstrap.js"></script>