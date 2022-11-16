<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-dark text-center " style="background:white;">Read customer feedback</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Ratings</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="feedback" items="${feedbacks}">
            <tr>
                <td>${feedback.id}</td>
                <td>${feedback.name}</td>
                <td>${feedback.email}</td>
                <td>${feedback.message}</td>
                <td>${feedback.ratingsforthehotel}</td>
                <td><a class="btn btn-warning" href="/update-feedback/${feedback.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-feedback/${feedback.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a class="btn btn-Primary" href="/create-feedback">Create Customer feedback</a>

</body></center>
<script src="/js/bootstrap.js"></script>


