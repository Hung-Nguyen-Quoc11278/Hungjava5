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
<title>Cart Page - Ustora Demo</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<jsp:include page="layout/cssfile.jsp" />


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
	<!-- End Page title area -->


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">

				<div class="col-md-4">
					<div class="single-sidebar">
						<h2 class="sidebar-title">Search Products</h2>
						<form action="#">
							<input type="text" placeholder="Search products..."> <input
								type="submit" value="Search">
						</form>
					</div>


					<div class="thubmnail-recent">
						<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
						<h2>
							<a href="single-product.html">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$800.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
						<h2>
							<a href="single-product.html">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$800.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
						<h2>
							<a href="single-product.html">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$800.00</del>
						</div>
					</div>
					<div class="thubmnail-recent">
						<img src="img/product-thumb-1.jpg" class="recent-thumb" alt="">
						<h2>
							<a href="single-product.html">Sony Smart TV - 2015</a>
						</h2>
						<div class="product-sidebar-price">
							<ins>$700.00</ins>
							<del>$800.00</del>
						</div>
					</div>
				</div>

				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">
								<table cellspacing="0" class="shop_table cart">
									<thead>
										<tr>
											<th class="product-remove">ID</th>
											<th class="product-thumbnail">Image</th>
											<th class="product-name">Name</th>
											<th class="product-price">Price</th>
											<th class="product-quantity">Quantity</th>
											<th class="product-subtotal">Total</th>
											<th class="product-subtotal">REMOVE</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${cart.items}">
											<tr class="cart_item">
												<td class="product-remove"><a title="Remove this item"
													class="remove" href="#">${item.id}</a></td>

												<td class="product-thumbnail"><a
													href="single-product.html"><img width="145"
														height="145" alt="poster_1_up" class="shop_thumbnail"
														src="${pageContext.request.contextPath}/img/${item.image}"></a>
												</td>

												<td class="product-name"><a href="single-product.html">${item.name}</a>
												</td>

												<td class="product-price"><span class="amount">${item.price}</span>
												</td>

												<td class="product-quantity">
													<div class="pt-4">
														<a class="minus" href="/home/cart/sub/${item.id}"> - </a>
														<input name="qty" value="${item.qty}" min="0"
															onblur="this.form.submit()" class="input-text qty text">
														<a class="plus" href="/home/cart/add/${item.id}">+</a>
													</div>
												</td>
												<td class="total-price first-row">${item.price * item.qty}</td>
												<td><a href="/home/cart/remove/${item.id}"> Remove</a></td>
											</tr>
										</c:forEach>
										<div>
											<a class="btn btn-info" href="/home/shop">Continue
												shopping</a> <a class="btn btn-info" href="/home/cart/clear">Clear
												cart</a>
										</div>
									</tbody>
								</table>
							</form>

							<div class="cart-collaterals">


								<div class="cross-sells">
									<h2>You may be interested in...</h2>
									<ul class="products">
										<li class="product"><a href="single-product.html"> <img
												width="325" height="325" alt="T_4_front"
												class="attachment-shop_catalog wp-post-image"
												src="img/product-2.jpg">
												<h3>Ship Your Idea</h3> <span class="price"><span
													class="amount">£20.00</span></span>
										</a> <a class="add_to_cart_button" data-quantity="1"
											data-product_sku="" data-product_id="22" rel="nofollow"
											href="single-product.html">Select options</a></li>

										<li class="product"><a href="single-product.html"> <img
												width="325" height="325" alt="T_4_front"
												class="attachment-shop_catalog wp-post-image"
												src="img/product-4.jpg">
												<h3>Ship Your Idea</h3> <span class="price"><span
													class="amount">£20.00</span></span>
										</a> <a class="add_to_cart_button" data-quantity="1"
											data-product_sku="" data-product_id="22" rel="nofollow"
											href="single-product.html">Select options</a></li>
									</ul>
								</div>
								<div class="cart_totals ">

									<div class="col-lg-4 offset-lg-4">
										
										<div class="proceed-checkout">
											<c:if test="${!isLogin}">
												<a class="btn btn-default" href="/home/login"
													class="proceed-btn"><div>Total : <span>${cart.total }</span></div> PROCEED TO CHECK OUT</a>
											</c:if>
											<c:if test="${isLogin}">
												<a class="btn btn-default" href="/home/checkout"
													class="proceed-btn"><div>Total: <span>${cart.total }</span></div> PROCEED TO CHECK OUT</a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>


	<jsp:include page="layout/footertop.jsp" />

	<!-- End footer top area -->
	<jsp:include page="layout/footerbottom.jsp" />
	<!-- End footer bottom area -->

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