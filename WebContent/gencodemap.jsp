<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- style for button -->
<style>
.button {
    background-color: orange; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid orange;
}

.button1:hover {
    background-color: orange;
    color: white;
}
</style>

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





	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAXma6NOFdnHh86ghSHjHYrz4bY11j6Sdk&sensor=false"></script>
	<script type="text/javascript">
	var geocoder = new google.maps.Geocoder();
	
	function geocodePosition(pos) {
	  geocoder.geocode({
	    latLng: pos
	  }, function(responses) {
	    if (responses && responses.length > 0) {
	      updateMarkerAddress(responses[0].formatted_address);
	    } else {
	      updateMarkerAddress('Cannot determine address at this location.');
	    }
	  });
	}
	
	function updateMarkerStatus(str) {
	  document.getElementById('markerStatus').innerHTML = str;
	}
	var mydiv4;
	function updateMarkerPosition(latLng) {
	   this.mydiv4= document.getElementById('info').innerHTML = [
	    latLng.lat(),
	    latLng.lng()
	  ].join(', ');
	  var mydiv2 = latLng.lat();
	  
	}
	
	function updateMarkerAddress(str) {
	  document.getElementById('address').innerHTML = str;
	  var mydiv3 = str;
	}
	
	function initialize() {
	  var latLng = new google.maps.LatLng(26.936338, 75.923539);
	  var map = new google.maps.Map(document.getElementById('mapCanvas'), {
	    zoom: 8,
	    center: latLng,
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	  });
	  var marker = new google.maps.Marker({
	    position: latLng,
	    title: 'Point A',
	    map: map,
	    draggable: true
	  });
	
	  // Update current position info.
	  updateMarkerPosition(latLng);
	  geocodePosition(latLng);
	
	  // Add dragging event listeners.
	  google.maps.event.addListener(marker, 'dragstart', function() {
	    updateMarkerAddress('Dragging...');
	  });
	
	  google.maps.event.addListener(marker, 'drag', function() {
	    updateMarkerStatus('Dragging...');
	    updateMarkerPosition(marker.getPosition());
	  });
	
	  google.maps.event.addListener(marker, 'dragend', function() {
	    updateMarkerStatus('Drag ended');
	    geocodePosition(marker.getPosition());
	  });
	}

	// Onload handler to fire off the app.
	google.maps.event.addDomListener(window, 'load', initialize);
	</script>
	
	<style>
	  #mapCanvas {
	    width: 500px;
	    height: 500px;
		float:left;
	  }
	  #infoPanel {
	    float: left;
	  }
	  #infoPanel div {
	  	float: left;
	  }
	</style>
</head>
<body>  




<header>
		<div class="w3layouts-top-strip">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">Zipper</a></h1>
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
					<li><a  href="about.jsp">About</a></li>
					<li><a class="active" href="gencodemap.jsp">Z code forge</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					
				  </ul>
				</div>
						<div class="clearfix"> </div>
			  </div>
			</nav>
			
	</header>

<div class="row">
  <div class="col-sm-4"><div id="mapCanvas"></div></div>
  <div class="col-sm-1"></div>
   <div class="col-sm-4">
  <div id="infoPanel"></div>
    <b>Marker status:</b>
    <div id="markerStatus"><i>Click and drag the marker.</i></div>
    <b>Current position:</b>
    <div id="info">	
    </div>
    <b>Closest matching address:</b>
    <div id="address"></div>
    
    <p>
    <br>
    <br>
    <h4>Specify the type of building you have.</h4>
    <form name="form1" method=get action="coordserv">
    <input type="radio" name="btype" value="C" checked>Commercial<br>
    <input type="radio" name="btype" value="R">Residential<br>
    <br>
    <input type="text" placeholder="Your floor number" name="fnumb"> 
    <input type="hidden" value="" name="coords" id="coords"/>
    <script language="javascript">
    var mydiv = 'abcd';
    console.log(mydiv4);
    console.log(mydiv);
    console.log("asas");
	document.getElementById('coords').value = marker.getPosition();
	</script>
	<br><br>
    <button type="submit" class="button button1" form="form1">Get Z code</button>
    </form>
  </div>
  </div>
</div>

</body>
</html>