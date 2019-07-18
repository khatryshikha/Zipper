<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Zipper</title>    

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>

<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>

	<script type="text/javascript">
			jQuery(document).ready(function(){
				jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
							
				jQuery('#responsive').change(function(){
				  $('#responsive_wrapper').width(jQuery(this).val());
				});
				
			});
	</script>	

	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>

	<script>
	$(document).ready(function(){
	    $(".dropdown").hover(            
	        function() {
	            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
	            $(this).toggleClass('open');        
	        },
	        function() {
	            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
	            $(this).toggleClass('open');       
	        }
	    );
	});
	</script>

</head>
<body>
	<header>
		<div class="w3layouts-top-strip">+
			<div class="container">
				<div class="logo">
					<h1><a href="index.html">Zipper</a></h1>
					<p>shortening Distances, connecting you to those who matter.</p>
				</div>
			</div>
		</div>
		<!-- navigation -->
			<nav class="navbar navbar-default">
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
					<li><a class="active" href="about.jsp">Z code forge</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					<br>
				  </ul>
				</div>
			<!--
				<div class="w3_agile_login">
							<div class="cd-main-header">
								<a class="cd-search-trigger" href="#cd-search"> <span></span></a>
							</div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search">
								</form>
							</div>
						</div>-->
						<div class="clearfix"> </div>
			  </div>
			</nav>
		</header>
		<br>
		<br>
		<center>
		<h3>The custom Z-code you requested ${colos} already exists. 
		<br>
		<br>Kindly try a different one.</h3></center>
		<br>
		<br>
		<br>
<!-- footer -->
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="agileinfo">
				<p>© 2017 Zipper . All Rights Reserved</p>
			</div>
		</div>
	</div>
<script src="js/bootstrap.js"></script>
</body>
</html>