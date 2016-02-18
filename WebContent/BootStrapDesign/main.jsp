<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <title>Search for Vendors </title>

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
    
</head>
<body>
<div class="brand">No Wait Services</div>
    <div class="address-bar">2174 Stevenson Home | Atlanta, GA 30045 | 678.237.2992</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        <strong>Need a Vendor Now? Select From our Vendors Below</strong>
                    </h2>
                    <hr>
                </div>
                <div class="col-md-6">
                            <form method="post" action="../searchServices">
                    
            
               
                    <strong>Availble Services</strong>
                    <select name="Services"  required>
                        <option id="1" value="1">ChildCare</option>
                        <option id="2"value="2">Nail Tech</option>
                        <option id="3"value="3">Electrican</option>
                        <option id="4"value="4">Natural Hair Stylist</option>
                        <option id="5"value="5">Cleaner(Residential/Business)</option>
                    </select>
                <<div class="form-row">
             <br> <button type="submit">Submit Form</button>
            </div>
            
                </div>
                <div class="col-md-6">
                <p>Please Select The Service You're looking. These Vendors are Available now and Can</p>
                
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        
        </div>

    
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