<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html> 

<html>

	<head>
	   <title> Customers </title>
	   
	   <link rel="stylesheet" 
	       href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
	       integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" 
	       crossorigin="anonymous">
	   
	   <link type="text/css"
      	 rel="stylesheet"
     	 href="${pageContext.request.contextPath}/resources/css/student_style.css" />
       
	</head>

	<body>
	    
	    <div class="font-weight-bold text-center"> 
	          <h4> CRM - Customer Relationship Manager </h4>
	    </div>
	    
	    <!-- Button add new customer -->
	    <div class="d-flex p-2 justify-content-center"> 
	       <button type="button" onclick="window.location.href='showFormNewCustomer'; return false;" class="btn btn-outline-success"> New customer </button>
	    </div>
	    
	    <br>
	    
	    <div class="container">
	       <div id="content">
	          <table>
	             <tr>
	                <th> First Name </th>
	                <th> Last Name </th>
	                <th> Email </th>
	                <th> Update </th>
	                <th> Delete </th>
	             </tr>
	             
	             <c:forEach var="tempCustomer" items="${customers}">
	             
	             <!-- construct an update link with customers -->
	                <c:url var="updateLink" value="/customer/showFormForUpdate"> 
	                	<c:param name="customerId" value="${tempCustomer.id}"></c:param>
	                </c:url>
	                
	             <!-- construct a delete link with customers -->
	                <c:url var="deleteLink" value="/customer/deleteUser"> 
	                	<c:param name="customerId" value="${tempCustomer.id}"></c:param>
	                </c:url>	                	                                
	             
	             	<tr> 
	             		<td> ${tempCustomer.firstname} </td>
	             		<td> ${tempCustomer.lastname} </td>
	             		<td> ${tempCustomer.email} </td>
	             		<td> <a href="${updateLink}"> Update </a></td>
	             		<td> <a href="${deleteLink}"> Delete </a></td>
	             	</tr>
	             </c:forEach>
	             
	          </table> 
	       </div> 
	    </div>
	    
	</body>

</html>