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
		<div class="w3layouts-top-strip">
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
					<li><a  href="index.jsp">Home</a></li>
					<li><a class="active" href=#>About</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					
				  </ul>
				</div>
						<div class="clearfix"> </div>
			  </div>
			</nav>
			
	</header>

	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html">Home</a></li>
				<li class="active">About</li>
			</ol>
		</div>
	</div>
	<div class="container">
		<div class="banner-btm-agile">
			<div class="col-md-9 btm-wthree-left">
				<div class="courses">
					
					<div class="agileits_heading_section">
						<h3 class="wthree_head">About</h3>
						<p class="agileinfo_para">We are a versatile company committed to our customers.</p>
					</div>
						<div class="agileits_w3layouts_team_grids w3ls_courses_grids">
							<div class="col-md-6 w3ls_banner_bottom_left w3ls_courses_left">
								<div class="w3ls_courses_left_grids">
									<div class="w3ls_courses_left_grid">
										<h3><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Who are we?</h3>
										<p>We tend to ease out the often-caused troubles of marking a location in real life scenario 
										by making a location pointer k/as ZIPPER. We counter the problem of difficulties 
										faced in hunting a location/place in maps, for instance, any street no or any house 
										number deep down some lane of old city.</p>
									</div>
									<div class="w3ls_courses_left_grid">
										<h3><i class="fa fa-pencil-square-o" aria-hidden="true"></i>What do we do?</h3>
										<p>A very productive way for all the users be any type, to search for his/her given location once the 
										location has been registered in our zipper, that would be provided a unique identification, k/as zipper 
										code with the help of its longitude and latitude, which will act as the tag for that particular location. 
										Our customers base range across all the companies/or services, which operate on any kind of maps or 
										navigation system such as cab services or delivery hunters by catalysing their process of the location
										 hunting which otherwise manually done could be treacherous and cumbersome.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 agileits_courses_right">
								<img src="images/5.jpg" alt=" " class="img-responsive">
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				<!-- stats-bottom -->
	<div class="team">
		
				<div class="clearfix"> </div>
			</div>
		
	</div>

		</div>
	</div>
	<!-- footer -->
	<div class="footer-agile-info">
		<div class="container">
			<div class="col-md-4 w3layouts-footer">
				<a name="contact"><h3>Contact Information</h3></a>
					<p><span><i class="fa fa-map-marker" aria-hidden="true"></i></span>The LNMIIT, Rupa Ki Nangal, Post Sumel via Jamdoli</p>
					<p><span><i class="fa fa-envelope" aria-hidden="true"></i></span><a href="#">E: info@zipper.com</a> </p>
					<p><span><i class="fa fa-mobile" aria-hidden="true"></i></span>P: +91-9772338453 </p>
					<p><span><i class="fa fa-globe" aria-hidden="true"></i></span><a href="#">W: www.zipper.com/about</a></p>
			</div>
			<div class="col-md-4 wthree-footer">
				<h2>Blog</h2>
				<p>We run a blog on latest technologiesa and trends in Java, MySql, GoeTagging and Geolocation technologies..</p>
			</div>
			<div class="col-md-4 w3-agile">
				<h3>Newsletter</h3>
				<p>Enter you Email here for our newsletter. We don't span or share your ID with anyone else.</p>
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="Send">
				</form>
			</div>
		</div>
	</div>
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