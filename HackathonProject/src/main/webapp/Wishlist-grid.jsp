<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.wishlistBean"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
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






	<div class="site-section">
		<div class="container">

			<div class="row mb-5">
				<div class="col-md-12 order-1">


					<%
                          if(request.getAttribute("msg")!=null){
                         	 
                         	   out.println(request.getAttribute("msg"));
                          } 
                     %>
					<div class="row mb-5">
						<%
                 List<wishlistBean> list=WishlistDao.DisplaytoWishlist(u.getUid());
 
                  for(wishlistBean w:list)
                  {
	 
	             ProductBean p=ProductDao.productinfo(w.getPid());
            
            %>


						   <div class="col-lg-4 col-md-6 item-entry mb-4">

          
          <%--   <a href="shop-details.jsp?pid=<%=p.getPid()%>" class="product-item md-height bg-gray d-block">
              <img src="product_image/<%=p.getProduct_image()%>" alt="Image" class="img-fluid">
            </a>
            <h2 class="item-title"><a href="#"><%=p.getProduct_name() %></a></h2>
            <strong class="item-price"><%=p.getProduct_price() %></strong> --%>

						<div class="card"
							style="width: 20rem; margin: 20px; display: flex; justify-content: center; align-items: center">
							<img style="height: 100%; max-height: 500px"
								src="product_image/<%=p.getProduct_image()%>"
								class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">
									<a href="#"><%=p.getProduct_name()%></a>
								</h5>
								<p class="card-text"><%=p.getProduct_desc()%>

								</p>
								<p class="card-text"><%=p.getProduct_price()%>
									Rs
								</p>
								<a href="shop-details.jsp?pid=<%=p.getPid()%>"
									class="btn btn-primary">Details</a>
							</div>
						</div>
					</div>
					<% 
                }
         %>
				</div>


			</div>

		</div>

	</div>
	</div>


	<footer class="site-footer custom-border-top">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
					<h3 class="footer-heading mb-4">Promo</h3>
					<a href="#" class="block-6"> <img src="images/about_1.jpg"
						alt="Image placeholder" class="img-fluid rounded mb-4">
						<h3 class="font-weight-light  mb-0">Finding Your Perfect
							Shirts This Summer</h3>
						<p>Promo from July 15 &mdash; 25, 2019</p>
					</a>
				</div>
				<div class="col-lg-5 ml-auto mb-5 mb-lg-0">
					<div class="row">
						<div class="col-md-12">
							<h3 class="footer-heading mb-4">Quick Links</h3>
						</div>
						<div class="col-md-6 col-lg-4">
							<ul class="list-unstyled">
								<li><a href="#">Sell online</a></li>
								<li><a href="#">Features</a></li>
								<li><a href="#">Shopping cart</a></li>
								<li><a href="#">Store builder</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-4">
							<ul class="list-unstyled">
								<li><a href="#">Mobile commerce</a></li>
								<li><a href="#">Dropshipping</a></li>
								<li><a href="#">Website development</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-4">
							<ul class="list-unstyled">
								<li><a href="#">Point of sale</a></li>
								<li><a href="#">Hardware</a></li>
								<li><a href="#">Software</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="block-5 mb-5">
						<h3 class="footer-heading mb-4">Contact Info</h3>
						<ul class="list-unstyled">
							<li class="address">203 Fake St. Mountain View, San
								Francisco, California, USA</li>
							<li class="phone"><a href="tel://23923929210">+2 392
									3929 210</a></li>
							<li class="email">emailaddress@domain.com</li>
						</ul>
					</div>

					<div class="block-7">
						<form action="#" method="post">
							<label for="email_subscribe" class="footer-heading">Subscribe</label>
							<div class="form-group">
								<input type="text" class="form-control py-4"
									id="email_subscribe" placeholder="Email"> <input
									type="submit" class="btn btn-sm btn-primary" value="Send">
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="icon-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>

			</div>
		</div>
	</footer>
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