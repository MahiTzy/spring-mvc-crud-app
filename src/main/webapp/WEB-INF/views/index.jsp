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
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td>${p.price}</td>
								<td><a class="btn btn-primary btn-sm"
										href="${pageContext.request.contextPath}/upproduct/${p.id}">Update</a>
									<a class="btn btn-danger btn-sm"
										href="${pageContext.request.contextPath}/delproduct/${p.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container">
				<a class="btn btn-danger btn-sm"
										href="${pageContext.request.contextPath}/addproducts">App Products</a>
				</div>
			</div>

		</div>
	</div>
</body>
</html>