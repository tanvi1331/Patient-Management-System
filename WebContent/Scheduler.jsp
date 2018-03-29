<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "com.smartgwt.client.widgets.Canvas,java.util.*,com.smartgwt.client.widgets.calendar.Calendar"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Patient Management System</title>

    <link href="css/lib/chartist/chartist.min.css" rel="stylesheet">
	<link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  $("#datepicker").datepicker({
		    showButtonPanel: true,
		    dateFormat: 'yy-mm-dd',
		    onSelect: function() {
		        var dateObject = $('#datepicker').datepicker().val();
		    }
		   }
		  );
  } );
  </script>
</head>
<body>
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
<div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Bill</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">View Your Appointments</li>
                        
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                	<div class="col-lg-1">
                	</div>
                    <div class="col-lg-9 align-self-center">
                        <div class="card">
                            <div class="card-title">
                                <h4>Your Bill</h4>
                            </div>
                            <div class="card-body">
<form action="TimeGetter" method="get">
<input type="hidden" id="scheduler" value="date">
<p>Date: <input type="text" id="datepicker" name="datepicker"></p>
<input type="submit" value="Check Availibility">
</form>

<% HttpSession s= request.getSession(); 
if(s.getAttribute("enable").equals("true")) {%>
	<div>
	<jsp:include page="/Avail.jsp" />	
	</div>
	<% } else{out.print("Sorry! Not Available.");} %>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>