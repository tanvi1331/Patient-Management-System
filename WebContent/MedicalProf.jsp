<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Medical Profile</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="/Patient_Management_System/Index.jsp">
                        <!-- Logo icon -->
                        <b><img src="images/MedLogoM.png" alt="homepage" class="dark-logo" /></b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span><img src="images/logo-text.png" alt="homepage" class="dark-logo" /></span>
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- Search -->
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search here"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>
                        
                       
                        <!-- Profile -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/users/5.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="/Patient_Management_System/UpdateLoad"><i class="ti-user"></i> Profile</a></li>                                    
                                    <li><a href="/Patient_Management_System/Login.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- End header header -->
        <!-- Left Sidebar  -->
        <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Profile <span class="label label-rouded label-primary pull-right">2</span></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/Patient_Management_System/UserProfile.jsp">Account Profile </a></li>
                                <li><a href="/Patient_Management_System/UpdateProfile.jsp">Medical Profile </a></li>
                            </ul>
                        </li>
                        
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">Appointments</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/Patient_Management_System/SearchDoc.jsp">Book an Appointment</a></li>
                                <li><a href="/Patient_Management_System/ViewAppointment.jsp">View your Appointments</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">Med Docs</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/Patient_Management_System/Diagnostics.jsp">Diagnostics</a></li>
                                <li><a href="/Patient_Management_System/Prescription.jsp">Prescriptions</a></li>
                                <li><a href="/Patient_Management_System/XRay.jsp">X-Rays</a></li>
                                
                            </ul>
                        </li>
                        
						
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Bills</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/Patient_Management_System/Bill.jsp">View</a></li>
                            </ul>
                        </li>
                                                                        
                        
                                              
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Medical Profile</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Medical Profile</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid centered" >
                <!-- Start Page Content -->
                <div class="row">
                	<div class="col-lg-4">
                	</div>
                    <div class="col-lg-4 col-centered" >
                        <div class="card card-outline-info" style="width: 450px">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Edit Your Medical Profile</h4>
                            </div>
                            <div class="card-body m-t-15">
                                
                                <form action="UpdateServlet" method="post" class="form-horizontal form-bordered" style="width: 400px">
                                    <div class="form-body">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Height</label>
                                            <div class="col-md-8">
                                                <input type="text" name="height" placeholder="Your Height in cm" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Weight</label>
                                            <div class="col-md-8">
                                                <input type="text" name="weight" placeholder="Your Weight in lbs" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Gender</label>
                                            <div class="col-md-8">
                                                <select name="gender" id="sex" class="form-control custom-select" requried>
                									<option value="dropdown">Please Select Gender</option>
                									<option value="male">Male</option>
                									<option value="female">Female</option>
                									<option value="female">Other</option>
    											</select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Date of Birth</label>
                                            <div class="col-md-8">
                                                <input type="date" placeholder="Date of Birth" name="dob"class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Emergency Contact</label>
                                            <div class="col-md-8">
                                                 <input type="text" placeholder="Emergency Contact" name="econtact" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Allergies</label>
                                            <div class="col-md-8">
                                                <input type="text" name="alg" class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-4">Current Medications</label>
                                            <div class="col-md-8">
                                                <input type="text" name="med" class="form-control">
                                            </div>
                                        </div>                       
                                    </div>
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="offset-sm-3 col-md-9">
                                                        <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Update</button>
                                                        <button type="button" class="btn btn-inverse">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>  
                    <div class="col-lg-4">
                	</div>                  
               </div>	
             
                
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>

</body>

</html>