<base href="${pageContext.servletContext.contextPath}/" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<meta charset="UTF-8">
<jsp:include page="layout/cssfile.jsp" />

<title>Insert title here</title>
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
		<div class="zigzag-bottom"></div>
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
		</div>
	</div>





	<jsp:include page="layout/footertop.jsp" />

	<!-- End footer top area -->
	<jsp:include page="layout/footerbottom.jsp" />
</body>
</html>