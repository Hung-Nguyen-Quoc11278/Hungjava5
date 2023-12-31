<div class="header-area">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="user-menu">
					<ul style="display: flex;'">
						<c:if test="${!isLogin}">
							<a href="/home/login" class="login-panel"><i
								class="fa fa-user"></i>Login</a>
						</c:if>
						<c:if test="${isLogin}">
							<c:if test="${admin}">
								<a href="/admin/index" class="login-panel"><i
									class="fa fa-user"></i>Administration</a>
							</c:if>
							<div class="top-social">
								<a href="profile" class="text-primary"
									style="font-weight: bolder;">${fullname}</a> <a
									class="text-danger" id="btnLogOff" href="/logout" title="">[Logout]</a>
							</div>
						</c:if>
					</ul>
				</div>
			</div>

			<div class="col-md-4">
				<div class="header-right">
					<ul class="list-unstyled list-inline">
						<li class="dropdown dropdown-small"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle" href="#"><span
								class="key">currency :</span><span class="value">USD </span><b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">USD</a></li>
								<li><a href="#">INR</a></li>
								<li><a href="#">GBP</a></li>
							</ul></li>

						<li class="dropdown dropdown-small"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle" href="#"><span
								class="key">language :</span><span class="value">English
							</span><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">English</a></li>
								<li><a href="#">French</a></li>
								<li><a href="#">German</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>