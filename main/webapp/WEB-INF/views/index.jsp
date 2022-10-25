<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/styles.css">
<!-- <meta http-equiv="refresh" content="5" /> -->
<link rel="icon" type="image/jpg" href="images/my-logo.jpg"  sizes="16x16">
<title>Home</title>

</head>

<body>
	<header>
		<div class="header-content clearfix">
		<img class="header-image" src="/images/bowling-2.jpg" alt="picture of bowling pins and balls" width="15%" height="15%">
			<h1>Bowling Tracker</h1>
		</div>
		<nav class="header-nav">
			<ul class="nav-links">
				<li><a href="/" onclick="self.reload(true);">Home</a></li>
				<li><a href="/add-game" target="_blank">Add Game</a></li>
			</ul>
		</nav>
	</header>
	
	<main>
		<section>
			<div class="section-header"><h2>Bowling Tracker Home Page</h2></div>
			
			<div class="table"> 
				<p>Current Average: ${currentAverage}</p>
				<table>
					<thead class="center-text">
						<th>Id</th>
						<th>Date</th>
						<th>Score</th>
						<th>Actions</th>
					</thead>
					<tbody>
						<c:forEach items="${games}" var="game">
							<tr>
								<td class="center-text">${game.id}</td>
								<td>${game.date}</td>
								<td>${game.score}</td>
								<td class="center-text actions">
									<%-- <a href="/edit-course/${course.id}">Edit</a>
									&nbsp;&nbsp;|&nbsp;&nbsp; --%>
									<a href="/delete/${game.id}">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
