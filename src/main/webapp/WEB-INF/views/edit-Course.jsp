<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./common.jsp"%>
</head>
<body>

	<div class="container mt-5">
		<div class="card">
			<div class="card-header bg-success text-white">
				<h4 class="mb-0">Edit Course Details</h4>
			</div>
			<div class="card-body">
				<form action="${pageContext.request.contextPath }/save-course"
					method="post">

					<div class="form-group">
						<label for="cId"></label> <input type="hidden"
							class="form-control" id="cId" name="cId"
							placeholder="Enter Course ID" value="${course.cId }" required>
					</div> 

					<div class="form-group">
						<label for="course">Course Name:</label> <input type="text"
							class="form-control" id="course" name="course"
							placeholder="Enter Course Name" value="${course.course }"
							required>
					</div>

					<div class="form-group">
						<label for="description">Course Description:</label>
						<textarea class="form-control" id="description" name="description"
							rows="4" placeholder="Enter Course Description" required>${course.description}</textarea>
					</div>

					<div class="form-group">
						<label for="price">Course Price:</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="Enter Course Price" value="${course.price }"
							required>
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-warning">Update</button>
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>