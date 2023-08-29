<base href="${pageContext.servletContext.contextPath}/" />

<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
--><%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout Page - Ustora Demo</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<jsp:include page="layout/cssfile.jsp" />

</head>
<body>

	<jsp:include page="layout/header.jsp" />
	<jsp:include page="layout/cart.jsp" />
	<!-- End site branding area -->
	<jsp:include page="layout/menu.jsp" />
	<!-- End mainmenu area -->

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Shopping Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">


				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">


							<form id="login-form-wrap" class="login collapse" method="post">




								<p class="form-row form-row-first">
									<label for="username">Username or email <span
										class="required">*</span>
									</label> <input type="text" id="username" name="username"
										class="input-text">
								</p>
								<p class="form-row form-row-last">
									<label for="password">Password <span class="required">*</span>
									</label> <input type="password" id="password" name="password"
										class="input-text">
								</p>
								<div class="clear"></div>


								<p class="form-row">
									<input type="submit" value="Login" name="login" class="button">
									<label class="inline" for="rememberme"><input
										type="checkbox" value="forever" id="rememberme"
										name="rememberme"> Remember me </label>
								</p>
								<p class="lost_password">
									<a href="#">Lost your password?</a>
								</p>

								<div class="clear"></div>
							</form>


							<form enctype="multipart/form-data" action="home/order-detail"
								class="checkout" method="post" name="checkout">
								<h3 id="order_review_heading">Your order</h3>
								<input type=text name="address" placeholder="Nhap dia chi ">
								<div id="order_review">
									<table class="shop_table">
										<thead>
											<tr>
												<th class="product-name">Product</th>
												<th class="product-total">Total</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${cart.items}">
												<tr>
													<td>${item.name }x${item.qty}</td>
													<td>$${item.price * item.qty}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<button class="btn btn-success">Place order</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="layout/footertop.jsp" />

	<!-- End footer top area -->
	<jsp:include page="layout/footerbottom.jsp" />

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>
</body>
</html>