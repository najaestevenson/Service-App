<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vendor Profile - No Wait Services </title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">
    <link rel="stylesheet" href="css/form-labels-on-top.css">

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
                <a class="navbar-brand" href="home.jsp">Home</a>
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
                    <h1 class="intro-text text-center">
                        <strong>Vendor Profile</strong>
                        <article>Please fill in the fields below</article>
                    </h1>
                    <hr>
                </div>
                <div class="col-md-6">
                    <div class="main-content">

        <!-- You only need this form and the form-labels-on-top.css -->

        <form class="form-labels-on-top" method="post" action="../vendorProfile">

            <div class="form-title-row">
                <h3>Let's Get Started</h3>
            </div>

            

            <div class="form-row" >
               
                    <strong>Services You Provide</strong>
                    <select name="Services" multiple required>
                        <option id="1" value="1">ChildCare</option>
                        <option id="2"value="2">Nail Tech</option>
                        <option id="3"value="3">Electrican</option>
                        <option id="4"value="4">Natural Hair Stylist</option>
                        <option id="5"value="5">Cleaner(Residential/Business)</option>
                    </select>
                
            </div>

            <div class="form-row">
                <label>
                    <span>Mobile Services?</span>
                    <input type="checkbox" name="mobile" checked>I am Mobile<br>
                    <input type="checkbox" name="mobile" >I am Not Mobile<br>
                    <input type="checkbox" name="mobile" >Varies Please contact provider
                </label>
            </div>

            <div class="form-row">
                <label><span>Years of Experience</span></label>
                <div class="form-radio-buttons" required>

                    <div>
                        
                            <li><input type="radio" name="exp" value ="0-6 months">  0-6 months</li>
                            <li><input type="radio" name="exp" value = "6 mons- 1yr">  6 mons.- 1yr</li>
                            <li><input type="radio" name="exp" value = "1-2 yrs">  1-2 yrs.</li>
                            <li><input type="radio" name="exp" value = "2-4 yrs">  2-4 yrs.</li>
                            <li><input type="radio" name="exp" value = "4-7 yrs">  4-7 yrs.</li>
                            <li><input type="radio" name="exp" value = "7+ yrs">  7+ yrs.</li>
                       
                    </div>

                </div>
            </div>

            <div class="form-row">
             <br> <button type="submit">Submit Form</button>
            </div>

        </form>

    </div>


                </div>
                <hr>
                
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
