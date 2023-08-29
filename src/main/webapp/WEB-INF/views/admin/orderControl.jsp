<!doctype html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<jsp:include page="layoutadmin/layout1.jsp" />
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
</head>

<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- navbar -->
		<!-- ============================================================== -->
		<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<a class="navbar-brand" href="/home/index">Concept</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">
						<li class="nav-item">
							<div id="custom-search" class="top-search-bar">
								<input class="form-control" type="text" placeholder="Search..">
							</div>
						</li>
						<li class="nav-item dropdown notification"><a
							class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
							<ul
								class="dropdown-menu dropdown-menu-right notification-dropdown">
								<li>
									<div class="notification-title">Notification</div>
									<div class="notification-list">
										<div class="list-group">
											<a href="#"
												class="list-group-item list-group-item-action active">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-2.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jeremy
															Rakestraw</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-3.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">John
															Abraham </span>is now following you
														<div class="notification-date">2 days ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-4.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Monaan
															Pechi</span> is watching your main repository
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-5.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jessica
															Caruso</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div class="list-footer">
										<a href="#">View all notifications</a>
									</div>
								</li>
							</ul></li>
						<li class="nav-item dropdown connection"><a class="nav-link"
							href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-fw fa-th"></i>
						</a>
							<ul class="dropdown-menu dropdown-menu-right connection-dropdown">
								<li class="connection-list">
									<div class="row">
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/github.png" alt=""> <span>Github</span></a>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/dribbble.png" alt=""> <span>Dribbble</span></a>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/dropbox.png" alt=""> <span>Dropbox</span></a>
										</div>
									</div>
									<div class="row">
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/mail_chimp.png" alt=""><span>Mail
													chimp</span></a>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
											<a href="#" class="connection-item"><img
												src="assets/images/slack.png" alt=""> <span>Slack</span></a>
										</div>
									</div>
								</li>
								<li>
									<div class="conntection-footer">
										<a href="#">More</a>
									</div>
								</li>
							</ul></li>
						<li class="nav-item dropdown nav-user"><a
							class="nav-link nav-user-img" href="#"
							id="navbarDropdownMenuLink2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><img
								src="assets/images/avatar-1.jpg" alt=""
								class="user-avatar-md rounded-circle"></a>
							<div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
								aria-labelledby="navbarDropdownMenuLink2">
								<div class="nav-user-info">
									<h5 class="mb-0 text-white nav-user-name">John Abraham</h5>
									<span class="status"></span><span class="ml-2">Available</span>
								</div>
								<a class="dropdown-item" href="#"><i
									class="fas fa-user mr-2"></i>Account</a> <a class="dropdown-item"
									href="#"><i class="fas fa-cog mr-2"></i>Setting</a> <a
									class="dropdown-item" href="#"><i
									class="fas fa-power-off mr-2"></i>Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- ============================================================== -->
		<!-- end navbar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- left sidebar -->
		<!-- ============================================================== -->
		<div class="nav-left-sidebar sidebar-dark">
			<div class="menu-list">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="d-xl-none d-lg-none" href="#">Dashboard</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<jsp:include page="layoutadmin/Controll.jsp" />
				</nav>
			</div>
		</div>

		

		<!-- ============================================================== -->
		<!-- end left sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-6 offset-3">
				<form:form name="qryform" id="qryform" action="/admin/order"
					class="px-3" modelAttribute="item">
					<div class="card">
						<div class="card-header">
							<h3 class="alert alert-info">
								Order Control <a href="/admin/order"
									class="btn btn-success float-right">Order List</a>
							</h3>
							<div class="bg-success text-light px-3">${message }</div>
						</div>
						<div class="card-body">
							<div class="form-group">
								<form:input type="text" class="form-control" id="id" disabled="true" 
									path="id" aria-describedby="idHid" placeholder="id" />
								<small id="idHid" class="form-text text-muted">Order ID is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" id="username" disabled="true" 
									path="account.username" aria-describedby="usernameHid"
									placeholder="Username" />
								<small id="usernameHid" class="form-text text-muted">Username
									is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" id="fullname" disabled="true" 
									path="account.fullname" aria-describedby="fullnameHid"
									placeholder="Fullname" />
								<small id="fullnameHid" class="form-text text-muted">Fullname
									is invalid</small>
							</div>
							<div class="form-group">
								<form:input type="date" class="form-control" id="createDate"
									path="createDate" aria-describedby="createDateHid" disabled="true" 
									placeholder="Create Date" />
								<small id="createDateHid" class="form-text text-muted">Create Date
									is invalid</small>
							</div>

							<div class="form-group">
								<form:input type="text" class="form-control" id="address"
									path="address" aria-describedby="addressHid" placeholder="Address" />
								<small id="addressHid" class="form-text text-muted">Address
									is invalid</small>
							</div>
						</div>
						<div class="card-footer text-muted">
							<button type="submit" class="btn btn-primary "
								formaction="/admin/order/create">Insert</button>
							<button type="submit" class="btn btn-warning"
								formaction="/admin/order/update">Update</button>
							<button type="submit" class="btn btn-danger"
								formaction="/admin/order/delete/${item.id}">Delete</button>
							<button type="submit" class="btn btn-success"
								formaction="/admin/orderControl">Reset</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<!-- 
		Search
		<div class="row">
			<form >
				<div class="form-inline float-left">
					<label for="name">Name: &nbsp;</label> <input type="text"
						class="form-control" name="name" id="name"
						aria-describedby="naemHid" placeholder="">
					<button class="btn btn-outline-primary ml-2">Search</button>
				</div>
			</form>
		</div> -->


		<!-- footer -->

	

		<!-- End footer -->

	</div>
		</div>

	</div>
	<!-- ============================================================== -->
	<!-- end wrapper  -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<!-- jquery 3.3.1 -->

</body>

</html>