<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Page</title>

<!--  my css file -->
<link type="text/css"
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/student_style.css" />

</head>
<body>
	<div>
	    <table>
		  <tr>
		    <th>Name</th>
		    <th>Gender</th>
		    <th>Number</th>
		  </tr>
		 
		 <c:forEach var="stud" items="${students}"> 
		    <tr>
		    	<td> ${stud.name} </td>
		    	<td> ${stud.gender} </td>
		    	<td> ${stud.number} </td>
		    </tr>
		 </c:forEach>

	    </table>
	</div>
</body>
</html>