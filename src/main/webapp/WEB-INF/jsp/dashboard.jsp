<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-dark text-center " style="background:white;">Dashboard</h1>

<div class="row" style= "margin-top:50px;">
<section class= "customer">
        <div class="col-lg-4 col-md-4 text-dark">
          <h2>Package Management </h2>
          <a href="/read-package" class="btn btn-block btn-primary">View Package Information</a>
        </div><!-- end of col4 div-->
        <div class="col-lg-4 col-md-4 text-dark">
          <h2>Booking </h2>
          <a href="/add-booking" class="btn btn-block btn-primary">Add Booking</a>
        </div><!-- end of col4 div-->
        <div class="col-lg-4 col-md-4 text-dark">
            <h2>feedback </h2>
            <a href="/read-feedback" class="btn btn-block btn-primary">Read Feedback</a>
        </div><!-- end of col4 div-->
</section>

</body></center>
<script src="/js/bootstrap.js"></script>