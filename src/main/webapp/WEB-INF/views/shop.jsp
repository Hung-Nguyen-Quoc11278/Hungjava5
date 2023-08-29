<base href="${pageContext.servletContext.contextPath}/" />
<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Shop Page- Ustora Demo</title>

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
						<h2>Shop</h2>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="single-product-area">
		<div style="display: flex;">
			<div class="search-price-name">
				<form action="/home/price" method="post">
					<div class="search-range">
						<div class="slidecontainer">
							<input type="range" min="0" max="200" value="50" name="max"
								class="slider" id="myRange">
							<p>
								Max: <span id="demo"></span>
							</p>
						</div>
						<button class="btn btn-success">Search</button>
					</div>

				</form>
				<form class="form-inline" action="home/search" style="width: 50%;">
										<div>Search by name</div>
				
					<nav style="display:flex;" >
						<input name="keywords" class="form-control">
						<button  type="submit">Search</button>
					</nav>

				</form>
			</div>

			<div class="container">
				<div class="row">
					<c:forEach var="item" items="${page.content}">
						<div class="col-md-4 col-sm-6">
							<div class="single-shop-product">
								<div class="product-upper">
									<img src="${pageContext.request.contextPath}/img/${item.image}"
										alt="">
								</div>
								<h2>
									<a href="#">${item.name}</a>
								</h2>
								<div class="product-carousel-price">
									<ins>${item.price}</ins>
								</div>

								<div class="product-option-shop">
									<a class="add_to_cart_button" data-quantity="1"
										data-product_sku="" data-product_id="70" rel="nofollow"
										href="/home/cart/add/${item.id}">Add to cart</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="text-center">
					<a href="/home/shop?p=0" class="btn btn-primary">First</a> <a
						href="/home/shop?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/home/shop?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/home/shop?p=${page.totalPages-1}" class="btn btn-primary">Last</a>
				</div>
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="product-show-option">
						<p>Show ${page.number*9 + 1 } - ${page.number*9 + page.numberOfElements }
							Of ${page.totalElements } Product</p>
					</div>
				</div>
			</div>

		</div>

	</div>



	<script>
		var slider = document.getElementById("myRange");
		var output = document.getElementById("demo");
		output.innerHTML = slider.value;

		slider.oninput = function() {
			output.innerHTML = this.value;

		}
	</script>

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