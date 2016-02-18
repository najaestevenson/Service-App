<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration New User </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<title>Register New User</title>
</head>
<body>
 <div class="brand">No Wait Services</div>
    <div class="address-bar">2174 Stevenson Home | Atlanta, GA 30045 | 678.237.2992</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">No Wait Services</a>
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>New User Registration</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                    <p>Please fill Out The Form Below</p>
                    	<small>All Fields Are Required</small>
                    	<div>
                    	<form name= "NewUserForm" action= "../registerNewUser" method ="post">
                    		<ul>
								<li>First: <input type="text" name="First" ></li>
								<li>Last: <input type ="text"name ="Last"  ></li>
								<li>User name: <input type = "text" name ="UserName"></li>
								<li>Password <input type ="password" name = "Password"></li>
								<li>Confirm Password <input type="password" name ="PasswordConfirmation"></li>
								<li>Email Address <input type ="email"name ="Email"></li>
								<li>Re-Enter Email <input type="email" name ="ConfirmEmail"></li>
								<li>ZipCode<input type ="text" name = "Zipcode"></li>
								<p><small>Please Select your Gender</small></p>
								  <input type="radio" name="Gender" value="Male"> Male<br>
 								 <input type="radio" name="Gender" value="Female"> Female<br>
 								 <input type="radio" name="Gender" value="I Do not wish to disclose"> Secret<br>
 								 <input type="radio" name="Gender" value="Other"> Other<br>
									<p><small>Please Check the Box/Boxes that Best Describes You...</small></p>
									<p><medium>Please check if you would like to register as a vendor</medium></p>
									
									<li>Yes<input type ="radio" name = "vendor" value ="Ven"></li>
									

								<li><input type="reset"value="Reset"></li>
								<li><input type="submit" name="Submit" value="You're Done!"></li>
							</ul>
                    	</form>
                    	</div>
                </div>
                
                <div class="clearfix"></div>
            </div>
        </div>

      
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="najae.jpg" alt="">
                    <h3>
                        <small>Najae Stevenson <b>Java Developer</b></small>
                    </h3>
                </div>
                </div>
                <div class="clearfix"></div>
        
   
    <!-- /.container -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Najae Stevenson  Jan 4,2016</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>