<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-5">
		<h2>Add Product</h2>
		<form action="handleproduct">
			<div class="form-group">
				<label for="product-name">Product Name:</label> 
				<input type="text"
					class="form-control" name="name" id="product-name"
					placeholder="Enter product name" required>
			</div>
			<div class="form-group">
				<label for="product-description">Product Description:</label>
				<textarea class="form-control" name="description" id="product-description" rows="3"
					placeholder="Enter product description" required></textarea>
			</div>
			<div class="form-group">
				<label for="product-price">Product Price:</label> 
				<input
					type="number" name="price" class="form-control" id="product-price"
					placeholder="Enter product price" required>
			</div>
			<button type="submit" class="btn btn-primary">Add</button>
			<a class="btn btn-secondary"
				href="${pageContext.request.contextPath}/home">Back</a>
		</form>
	</div>
</body>
</html>