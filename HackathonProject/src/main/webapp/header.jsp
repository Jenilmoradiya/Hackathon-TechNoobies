<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>RentIT</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>
<body>

	<div class="site-wrap">


		<div class="site-navbar bg-white py-2">

			<div class="search-wrap">
				<div class="container">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="#" method="post">
						<input type="text" class="form-control"
							placeholder="Search keyword and hit enter...">
					</form>
				</div>
			</div>

			<div class="container">
				<div class="d-flex align-items-center justify-content-between">
					<div class="logo">
						<div class="site-logo">
							<a href="index.jsp" class="js-logo-clone"><img alt=""
								src="images/logo.png"></a>
						</div>
					</div>
					<div class="main-nav d-none d-lg-block">
						<nav class="site-navigation text-right text-md-center"
							role="navigation">
							<ul class="site-menu js-clone-nav d-none d-lg-block">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="shop.jsp">Shop</a></li>
								<li><a href="#">Recommended</a></li>

								<li><a href="#contact_us">Contact</a></li>
							</ul>
						</nav>
					</div>


					<%
						UserBean u = null;
						if (session != null) {

							if (session.getAttribute("u") != null) {
								u = (UserBean) session.getAttribute("u");
						%>


					<div class="icons">
						<a href="#" class="icons-btn d-inline-block js-search-open"><span
							class="icon-search"></span></a> <a href="Wishlist-grid.jsp"
							class="icons-btn d-inline-block"><span class="icon-heart-o"><%=session.getAttribute("wishlist_count")%></span></a>

						<a style="padding: 10px; margin-left: 20px"
							href="changePassword.jsp">change password</a> <a
							href="logout.jsp">Logout</a>


						<%
						} else {
						%>
						<div>
							<a style="padding: 10px; margin-left: 20px" href="signup.jsp">Signup</a>
							<a href="login.jsp">Login</a>
						</div>
						<%
						}
						}
						%>


						<a href="#"
							class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
							class="icon-menu"></span></a>
					</div>
				</div>
			</div>
		</div>


	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>
</html>