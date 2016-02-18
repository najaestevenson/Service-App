<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <title>Vendor-Main-Page - No Wait Services </title>

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
                <a class="navbar-brand" href="home.jsp">Business Casual</a>
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
                        <strong>Hello Vendor</strong>
                    </h2>
                    <hr>
                </div>
                
                <div class="col-md-6">
                <p>Please check the Services you will be Providing Today. When you are ready to begin work please click the "Locate ME" button and you will become available on Google maps for all to See. </p>
                  <div class="form-row" >
               <form class="form-labels-on-top" method="post" action="">
                    <strong>Services You Provide</strong>
                    
                    <select name="Services"  required>
             
                        <option id="1" value="1">ChildCare</option>
                        <option id="2"value="2">Nail Tech</option>
                        <option id="3"value="3">Electrican</option>
                        <option id="4"value="4">Natural Hair Stylist</option>
                        <option id="5"value="5">Cleaner(Residential/Business)</option>
                        
                    </select>
                    <input type ="button" value ="Locate My Services" onClick="window.location.href='navigator.html';"/>
               
                </form>
            </div>
                
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="row">
            <div class="box">
             
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="najae.jpg" alt="">
                    <h3>
                        <small>Najae Stevenson <b>Java Developer</b></small>
                    </h3>
                </div>
                </div>
                <div class="clearfix"></div>
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