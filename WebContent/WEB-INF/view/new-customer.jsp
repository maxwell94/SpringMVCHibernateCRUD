<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New customer</title>
   <link rel="stylesheet" 
       href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
       integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" 
       crossorigin="anonymous">
</head>
<body>
	 <div class="container p-4">
	  <div class="container bg-success text-white justify-content-center">
	    <h2 class="text-center"> Add new customer </h2>
	  </div>
	  
	  <form:form class="form-horizontal" modelAttribute="customer" action="saveNewCustomer" method="POST">
	    
	    <!-- need to associate this data with customer id -->
	    <form:hidden path="id" />
	    
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="firstname">First name:</label>
	      <div class="col-sm-10">
	        <form:input type="text" class="form-control" id="firstname" placeholder="Enter first name" name="firstname" path="firstname"/>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="lastname">Last name:</label>
	      <div class="col-sm-10">          
	        <form:input type="text" class="form-control" id="lastname" placeholder="Enter last name" name="lastname" path="lastname"/>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="email">Email:</label>
	      <div class="col-sm-10">          
	        <form:input type="email" class="form-control" id="email" placeholder="Enter email" name="email" path="email"/>
	      </div>
	    </div>
	    
	    <!-- Button Save -->
	    <div class="d-flex p-2 justify-content-left"> 
	       <button type="submit" class="btn btn-outline-success"> Save customer </button>
	    </div>
	    
	  </form:form>
	  
	</div>   
	
	</body>
	
</html>