<html>

<head>
<title>Login</title>
<!-- Include CSS File Here -->
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">


<!-- Include JS File Here -->
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<style>
.error-space {
	margin-top: 2em;
	height: 3em;
	width: 100%;
}
</style>
<body>
	<div class="container card shadow-lg ">
		<div class="card text-center mt-3"
			style="color: rgb(153, 40, 59); border: none;">
			<h2 style="font-weight: bold;">Bidder Login</h2>
		</div>

		<form method="post" name="myform"
			action="http://localhost:9192/bidder/login">

			<div class="error-space">

				<%
				if (null != request.getAttribute("error")) {
					out.println("<div class=\"error alert alert-danger\"><b>" + request.getAttribute("error") + "</b></div>");
				}
				%>
			</div>
			<br> <label>Email :</label> <input type="email" name="userName"
				id="userName" /> <label>Password :</label> <input type="password"
				name="password" id="password" /> <input value="bidder" name="actor"
				hidden="true"> <input type="submit" value="Submit">
		</form>

	</div>
</body>

</html>