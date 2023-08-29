<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<base href="${pageContext.servletContext.contextPath}/" />

<!DOCTYPE html>
<html>
<head>
    <jsp:include page="layout/cssfile.jsp"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="layout/header.jsp"/>
     <!-- End header area -->
    <jsp:include page="layout/cart.jsp"/>
    <!-- End site branding area -->
    <jsp:include page="layout/menu.jsp"/>
     <!-- End mainmenu area -->
<div class="container">
		<div class="row">
			<div class="col-lg-10">
				<div class="alert alert-success col row mx-1" role="alert">
  					Order Successfully!
				</div>
				<div class="mx-1 mb-2">
						<h5><strong>Order ID:</strong> ${order.id }</h5>
						<h5><strong>Name:</strong> ${order.account.fullname }</h5>
						<h5><strong>Address:</strong> ${order.address }</h5>
						<h5><strong>Email:</strong> ${order.account.email }</h5>
						<h5><strong>Create Date:</strong> ${order.createDate }</h5>
				</div>
				<div class="cart-table">
					<table class="shop_table">
						<thead>
							<tr>
								<th>No.</th>
								<!-- <th>Image</th> -->
								<th class="p-name">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0"/>
							<c:forEach var="item" items="${items}">
								<input type="hidden" name="id" value="${item.id}">
								<tr>
									<td>${i=i+1}</td>
									<%-- <td class="cart-pic first-row">
										<img src="/forUser/img/products/${item.product.image}" alt="" width=50%></td> --%>
									<td class="cart-title first-row">
										<h5>${item.product.name }</h5>
									</td>
									<td class="p-price first-row">$${item.price }</td>
									<td class="p-price first-row">${item.quantity }</td>
									<td class="total-price first-row">$${item.price*item.quantity}</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="cart-buttons">
							<a href="/home/	shop" class="btn btn-danger">Continue
								shopping</a> 
						</div>
					</div>
					<c:set var="total" value="${0}" />
					<c:forEach var="item" items="${items }">
						<c:set var="total"  value="${total+(item.price*item.quantity) }" />
					</c:forEach>
					<div class="col-lg-4 offset-lg-4">
						<div class="proceed-checkout">
							<ul>
								<li style="color:red;">Total: &nbsp &nbsp $${total } <span></span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

        <jsp:include page="layout/footertop.jsp"/>
    
               <!-- End footer top area -->
        <jsp:include page="layout/footerbottom.jsp"/>
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    
    <!-- Slider -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bxslider.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/script.slider.js"></script>
</body>
</html>