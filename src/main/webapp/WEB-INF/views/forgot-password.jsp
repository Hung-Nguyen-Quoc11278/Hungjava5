<base href="${pageContext.servletContext.contextPath}/" />
<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora Demo</title>
    
    <jsp:include page="layout/cssfile.jsp"/>
  </head>
  <body>
   <jsp:include page="layout/header.jsp"/>
     <!-- End header area -->
    <jsp:include page="layout/cart.jsp"/>
    <!-- End site branding area -->
    <jsp:include page="layout/menu.jsp"/>
     <!-- End mainmenu area -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div>
                    <div class="form-group">
                        <h2>Forget Password</h2>
                        <h5 class="text-danger">${message }</h5>
                        <form action="home/forgot-password" method="post"  modelAttribute="ac">
                            <div class="group-input">
                                <label for="varify">Username</label>
                                <input class="form-control" type="text" id="varify" name="username">
                            </div>
                            <div >
                                <label for="email">Email</label>
                                <input class="form-control" type="email" id="email" name="email">
                            </div>
                            <button type="submit" class="site-btn login-btn">Send</button>
                        </form>
                        <div class="switch-login">
                            <a href="register" class="or-login">Or Create An Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
        <jsp:include page="layout/footertop.jsp"/>
    
               <!-- End footer top area -->
        <jsp:include page="layout/footerbottom.jsp"/>
    
    <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
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