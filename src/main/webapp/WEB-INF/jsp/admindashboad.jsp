<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/customer.css" rel="stylesheet">
<center><body class="bg">
<h1 class="text-dark text-center " style="background:white;">Dashboard</h1>

<div class="row" style= "margin-top:50px;">

<section class="Admin">
        <div class="col-lg-4 col-md-4 text-dark">
          <h2>Customer Management</h2>
          <a href="/read-customer" class="btn btn-block btn-primary">VIEW Customers</a>
        </div><!-- end of col4 div-->
        <div class="col-lg-4 col-md-4 text-dark">
          <h2>Feedback Details</h2>
          <a href="/read-feedback" class="btn btn-block btn-primary">Read Feedback</a>
        </div><!-- end of col4 div-->
      </div><!-- end of row-->

      <div class="row">
        <div class="col-lg-4 col-md-4 text-dark">
          <h2>Hotel Details</h2>
          <a href="/read-hotel" class="btn btn-block btn-primary">VIEW Hotel Details</a>
        </div><!-- end of div4-->


      <div class="col-lg-4 col-md-4 text-dark">
        <h2>Booking Details</h2>
        <a href="/read-booking" class="btn btn-block btn-primary">View Bookings</a>
       </div><!-- end of div4-->


      <div class="col-lg-4 col-md-4 text-dark">
        <h2>Package Details</h2>
        <a href="/read-package" class="btn btn-block btn-primary">View Packages</a>
      </div><!-- end of div4-->

         </div><!-- end of row-->

      </div><!-- end of row-->

</section>
    </div>
</body></center>
<script src="/js/bootstrap.js"></script>