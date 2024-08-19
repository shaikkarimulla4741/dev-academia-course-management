<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./common.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="<c:url value='/resources/css/styles.css' />" />

<!-- CSS for Background -->
<style>
body {
	background-image: url('<c:url value="/resources/img/background.jpg" />');
	/* Replace with the correct path to your image */
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	font-family: Arial, sans-serif;
	color: #333;
}

.container {
	margin-top: 50px;
}

.card {
	background-color: rgba(255, 255, 255, 0.9);
	/* Slight transparency to blend with background */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
}

.card-header {
	background-color: #28a745;
	color: white;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-body {
	padding: 20px;
}

.form-group label {
	font-weight: bold;
}

.form-control {
	border-radius: 5px;
}

.btn-success {
	background-color: #28a745;
	border-color: #28a745;
}

.btn-outline-danger {
	border-color: #dc3545;
	color: #dc3545;
}

.btn-outline-danger:hover {
	background-color: #dc3545;
	color: white;
}

.btn {
	width: 100px;
	margin: 10px;
}
</style>

</head>
<body>

	<h1
		style="color: #2c3e50; text-shadow: 2px 2px 5px #888888; font-size: 36px; font-weight: bold; text-align: center;">DevAcademia
		Courses</h1>


	<table>
		<thead>
			<tr>
				<th>Course ID</th>
				<th>Course Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${courses }" var="c">

				<tr>
					<td scope="row"><strong>DEVCID${c.cId}</strong></td>
					<td>${c.course }</td>
					<td>${c.description }</td>
					<td><strong>&#8377; ${c.price }</strong></td>
					<td><a href="edit-course/${c.cId }"><i
							class="fa-solid fa-pen-to-square text-primary"
							style="font-size: 25px;"></i></a><a href="delete-course/${c.cId }"><i
							class="fa-solid fa-square-minus text-danger"
							style="font-size: 25px;"></i></a></td>

				</tr>

			</c:forEach>

		</tbody>
	</table>

	<div class="container text-center">
		<a href="add-course" class="btn btn-success"
			style="display: inline-block; text-align: center; line-height: 1.5;">Add
			Course</a>
	</div>


</body>
</html>
