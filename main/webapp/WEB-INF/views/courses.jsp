<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="/css/styles.css"> -->
<!-- <meta http-equiv="refresh" content="5" /> -->
<link rel="icon" type="image/jpg" href="images/my-logo.jpg"  sizes="16x16">
<title>Courses</title>

</head>

<body>
	<header>
		<div class="header-content">
			<h1>Golf Tracker</h1>
		</div>
		<nav class="header-nav">
			<ul class="nav-links">
				<li><a href="/">Home</a></li>
				<li><a href="/courses">Courses</a></li>
            	<li><a href="">Scores</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<section>
			<div class="section-header"><h2>List of Courses</h2></div>
			
			
			<div class="table"> 
				<table>
					<thead class="center-text">
						<th>Id</th>
						<th>Name</th>
						<th>Location</th>
						<th>Total Holes</th>
						<th>Total Par</th>
						<th>Actions</th>
					</thead>
					<tbody>
						<c:forEach items="${courses}" var="course">
							<tr>
								<td class="center-text">${course.id}</td>
								<td>${course.name}</td>
								<td>${course.location}</td>
								<td>${course.totalHoles}</td>
								<td>${course.totalPar}</td>
								<td class="center-text actions">
									<a href="/edit-course/${course.id}">Edit</a>
									&nbsp;&nbsp;|&nbsp;&nbsp;
									<a href="/delete/${course.id}">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			<div class="btn-group">
				<a href="/add-course">Add New Course</a>
			</div>
			
		</section>
	</main>

	<footer>
		<!-- <nav class="footer-nav">
			<ul class="nav-links clearfix">
				<li><a href="/home">Home</a></li>
				<li><a href="/add-employee" target="_blank">Add Employee</a></li>
            	<li><a href="/search-employee">Search Employee</a></li>
			</ul>
		</nav>
		<div class="clear-float"></div> -->
		<p id="datetime"></p>
		<script>
			document.getElementById("datetime").innerHTML = Date();
		</script>
		<noscript>Sorry, your browser does not support JavaScript!</noscript>
	</footer>
</body>
</html>
