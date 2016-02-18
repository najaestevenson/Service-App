<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome-No Wait Services</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/business-casual.css" rel="stylesheet">

<!-- Fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div class="brand">No Wait</div>
	<div style='fixed: right;'>
		<form name="login" action="../login" method="post">
			<ul>
				<li><label for="username">Username</label> 
				<input type="text" name="username" placeholder="yourusername" required></li>
				<li><label for="password">Password</label> <input
					type="password" name="password" placeholder="password" required></li>
				<li><input type="submit" value="login"> <input type="reset" value="reset"></li>
					
			</ul>
				Not a Member? <button onClick="BootStrapDesign/registration.jsp"> Sign Up</button>
		</form>
	</div>
	
	<div class="address-bar">2174 Stevenson Home | Atlanta, GA 30045
		| 678.237.2992</div>

	<!-- Navigation -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
				<a class="navbar-brand" href="home.jsp">No Wait Services</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<%@ include file= 'NavOptions.jsp' %>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div class="container">

		<div class="row">
			<div class="box">
				<div class="col-lg-12 text-center">
					<div id="carousel-example-generic" class="carousel slide">
						<!-- Indicators -->
						<ol class="carousel-indicators hidden-xs">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img class="img-responsive img-full"
									src="img/stressedparent.jpg" alt="">
							</div>
							<div class="item">
								<img class="img-responsive img-full" src="img/Flood.jpg" alt="">
							</div>
							<div class="item">
								<img class="img-responsive img-full"
									src="img/we_have_the_solution.gif" alt="">
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span class="icon-prev"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="icon-next"></span>
						</a>
					</div>
					<h2 class="brand-before">
						<small>Welcome to</small>
					</h2>
					<h1 class="brand-name">No Wait Services</h1>
					<hr class="tagline-divider">
					<h2>
						<small>By <strong>Najae Stevenson</strong>
						</small>
					</h2>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
						Find The Right Service <strong>At The Right Time</strong>
					</h2>
					<hr>
					<img class="img-responsive img-border img-left" src="img/party.jpg"
						alt="">
					<hr class="visible-xs">
					<p>We can't plan everything, and when the unexpected happens No
						Wait Services is here to provide a ready, reliable service.</p>
					<p>No Wait Services make last minute plans possible. We
						provides a wide range of services and even notify you when the
						provider in close proximity</p>

				</div>
			</div>
		</div>

		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
						<strong>Grow Your Business</strong>
					</h2>
					<hr>

					<p>Join our team of ready providers. Build your Clientele.
						ShowCase your services and watch your business grow.</p>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.pureblack.de/google-maps/" id="get-map-data">pure black</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(33.9162533,-83.90570909999997),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(33.9162533, -83.90570909999997)});infowindow = new google.maps.InfoWindow({content:"<b>No wait services</b><br/>2174 skye isles pass<br/>30045 lawrenceville" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
	<!-- /.container -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<p>Copyright &copy; Stevenson Consulting 2016</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
		$('.carousel').carousel({
			interval : 5000
		//changes the speed
		})
	</script>

</body>

</html>
