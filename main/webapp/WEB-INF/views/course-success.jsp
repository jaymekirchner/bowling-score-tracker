<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/styles.css">
<link rel="icon" type="image/jpg" href="images/my-logo.jpg" sizes="16x16">
<title>Success!</title>
</head>

<body>

	<header>
		<div class="header-content clearfix">
			<h1>Golf Tracker</h1>
		</div>
		<!-- <nav class="header-nav">
			<ul class="nav-links">
				<li><a href="/home" onclick="self.close();">Home</a></li>
			</ul>
		</nav> -->
	</header>

	<main>
		<section>
			<div class="section-header">
				<h2>Success!</h2>
			</div>
			<div class="section-content">
				<p>Course was successfully ${task} with the following details:
				<div class="table success-table">
					<table>
						<thead class="center-text">
							<th>Id</th>
							<th>Name</th>
							<th>Location</th>
							<th>Total Holes</th>
							<th>Total Par</th>
						</thead>
						<tbody>
							<tr>
								<td>${course.id}</td>
								<td>${course.name}</td>
								<td>${course.location}</td>
								<td>${course.totalHoles}</td>
								<td>${course.totalPar}</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<a href="/courses">View Courses</a>
				<a href="" onclick="self.close()">Close</a>
				</p>
			</div>
		</section>

	</main>

	<footer>
		<div class="clear-float"></div>
		<p id="datetime"></p>
		<script>
			document.getElementById("datetime").innerHTML = Date();
		</script>
		<noscript>Sorry, your browser does not support JavaScript!</noscript>
	</footer>

</body>
</html>
