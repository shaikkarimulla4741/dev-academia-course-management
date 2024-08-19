<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./common.jsp"%>

<!-- CSS for Background -->
<style>
    body {
        background-image: url('<c:url value="/resources/img/background.jpg" />'); /* Replace with the correct path to your image */
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
        background-color: rgba(255, 255, 255, 0.9); /* Slight transparency to blend with background */
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

	<div class="container mt-5">
		<div class="card">
			<div class="card-header bg-success text-white">
				<h4 class="mb-0">Enter Course Details</h4>
			</div>
			<div class="card-body">
				<form action="save-course" method="post">

					<!--  <div class="form-group">
						<label for="cId">Course ID:</label> <input type="text" 
							class="form-control" id="cId" name="cId"
							placeholder="Enter Course ID" required>
					</div> -->

					<div class="form-group">
						<label for="course">Course Name:</label> <input type="text"
							class="form-control" id="course" name="course"
							placeholder="Enter Course Name" required>
					</div>

					<div class="form-group">
						<label for="description">Course Description:</label>
						<textarea class="form-control" id="description" name="description"
							rows="4" placeholder="Enter Course Description" required></textarea>
					</div>

					<div class="form-group">
						<label for="price">Course Price:</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="Enter Course Price" required>
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-success">Save</button>
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>