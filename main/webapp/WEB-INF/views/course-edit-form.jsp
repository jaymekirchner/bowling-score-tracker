<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="/css/styles.css"> -->
<!-- <meta http-equiv="refresh" content="5" /> -->
<link rel="icon" type="image/jpg" href="images/my-logo.jpg"  sizes="16x16">
<title>Edit Course</title>

</head>

<body>
	<header>
		<div class="header-content">
			<h1>Golf Tracker</h1>
		</div>
		<!-- <nav class="header-nav">
			<ul class="nav-links">
				<li><a href="/" onclick="self.reload(true);">Home</a></li>
				<li><a href="" target="_blank">Add Score</a></li>
            	<li><a href="">Edit Score</a></li>
			</ul>
		</nav> -->
	</header>

	<main>
		<section>
			<div class="section-header"><h2>Add New Course</h2></div>
			
			<span class="error">${courseExists}</span>
				<form:form action="/edit-course/${course.id}" method="post" modelAttribute="course">
					<div class="form-details">
						<div class="stretch-input">
							<form:label path="id" class="label">Id:</form:label>
                            <br/>
                            <form:input path="id" value="${course.id}" readonly="true"/>
                            <br/>
						
							<form:label path="name" class="label">Course Name:</form:label>&nbsp;&nbsp;<form:errors path="name" class="error" />
							<br />
							<form:input path="name"  value="${course.name}" />
							<br />

							<form:label path="location" class="label">Location:</form:label>
							<br />
							<form:input path="location" value="${course.location}"/>
							<form:errors path="location" class="error" />
							<br />

							<form:label path="totalHoles" class="label">Total Number of Holes*:</form:label>&nbsp;&nbsp;
							<span class="error">${errorMessage}</span><form:errors path="totalHoles" class="error" />
							<br />
							<form:input path="totalHoles" type="number" min="9" max="18" step="9" value="${course.totalHoles}"/>
							<br />
							
							<form:label path="totalPar" class="label">Total Par:</form:label>&nbsp;&nbsp;<form:errors path="totalPar" class="error" />
							<br />
							<form:input path="totalPar" type="number" value="${course.totalPar}"/>
							<br />
							
							
						</div>

						<br />
						<form:button>Update</form:button>
						<form:button onclick="self.close()">Go Back</form:button>
					</div>
				</form:form>
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
