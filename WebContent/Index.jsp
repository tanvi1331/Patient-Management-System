<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
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
    <title>Patient Management System</title>

    <link href="css/lib/chartist/chartist.min.css" rel="stylesheet">
	<link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
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
                                <li><a href="/Patient_Management_System/MedicalProf.jsp">Medical Profile </a></li>
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
     <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>
               <% HttpSession s=request.getSession();%>
                <sql:query dataSource = "${snapshot}" var = "result">
         			SELECT id FROM users where username='<%=s.getAttribute("uname")%>'
      			</sql:query>
      			 <c:forEach var = "row" items = "${result.rows}">
                <c:set var="pId" value="${row.id}" scope="session" />
                </c:forEach>
                    <h3 class="text-primary">Hello <%=s.getAttribute("uname")%>!</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">New Patients</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-comment f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">145</h2>
                                    <p class="m-b-0">New Appointments</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-success p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-vector f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">$240</h2>
                                    <p class="m-b-0">Bill Paid</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-location-pin f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">2</h2>
                                    <p class="m-b-0">Med Docs Upload</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>Your Medical Profile</h4>
                            </div>
                            <div class="sales-chart">
                                <div style="height:350px">
                                <jsp:include  flush="true" page="/UpdateProfile.jsp"/>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>Appointments</h4>
                            </div>
                            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT a.*,d.* FROM doctordata AS d INNER JOIN appointment AS a ON (a.dId=d.dId) where pid=<%=s.getAttribute("pId")%>;
      </sql:query>
                            <div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover ">
										<thead>
											<tr>
												<th>Doctor</th>
												<th>Date</th>
												<th>Time</th>
											</tr>
										</thead>
										<tbody>
											
											<c:forEach var = "row" items = "${result.rows}">
											<tr>
												<td>${row.fname} ${row.lname}</td>
												<td>${row.date}</td>
												<td>${row.start} ${row.end}</td>
												</c:forEach>
											</tr>
											</tbody>
									</table>
								</div>
							</div>
                        </div>
                    </div>
				</div>
				<div class="row">
                    <div class="col-lg-6">
                        <div class="card nestable-cart">
                            <div class="card-title">
                                <h4>World Map</h4>

                            </div>
                            <div class="datamap">
                                <div id="world-datamap"></div>
                            </div>
                        </div>
                    </div>
					<div class="col-lg-6">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Visitor</h4>
                                <div class="ct-svg-chart" style="height:420px"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->

                <div class="row">

                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Project</h4>
                            </div>
                            <div class="card-body">
                                <div class="current-progress">
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Website</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-40" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                            40%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Android</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                            60%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Ios</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                            70%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Mobile</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                            90%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Android</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                            60%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Ios</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                            70%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Mobile</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                            90%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Messages</h4>
                            </div>
                            <div class="card-body">
                                <div class="recent-meaasge">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">john doe</h4>
                                            <div class="meaasge-date">15 minutes Ago</div>
                                            <p class="f-s-12">We are happy about your service </p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/2.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. John</h4>
                                            <div class="meaasge-date">40 minutes ago</div>
                                            <p class="f-s-12">Quick service and good serve </p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/3.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. Michael</h4>
                                            <div class="meaasge-date">1 minutes ago</div>
                                            <p class="f-s-12">We like your birthday cake </p>
                                        </div>
                                    </div>
                                    <div class="media no-border">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/2.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. John</h4>
                                            <div class="meaasge-date">40 minutes ago</div>
                                            <p class="f-s-12">Quick service and good serve </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Todo</h4>
                            </div>
                            <div class="todo-list">
                                <div class="tdl-holder">
                                    <div class="tdl-content">
                                        <ul>
                                            <li class="color-primary">
                                                <label>
                                                <input type="checkbox"><i class="bg-primary"></i><span>Post three to six times on Twitter.</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-success">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-success"></i><span>Post one to two times on Facebook.</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-warning">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-warning"></i><span>Follow back those who follow you</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-danger">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-danger"></i><span>Connect with one new person</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="text" class="tdl-new form-control" placeholder="Type here">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 All rights reserved. Template designed by <a href="https://colorlib.com">Colorlib</a></footer>
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