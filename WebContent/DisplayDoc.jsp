<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
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
<script language="javascript"> 
<% int available=1;%>
function access(){ 
   var available ="<%=available%>"; 
   if(available != 1){
       document.getElementById('testlink').disabled=true;
   }
   else{
       document.getElementById('testlink').disabled=false;
   }
} 

</script>
</head>
<%String id=request.getParameter("id");
out.println(id);
%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>

      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from doctordata where department='<%=id%>';
      </sql:query>
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
                    <h3 class="text-primary">Choose a Doctor</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item">Book an Appointment</li>
                        <li class="breadcrumb-item">Departments</li>
                        <li class="breadcrumb-item active">Department</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                	<div class="col-lg-1">
                	</div>
                    <div class="col-lg-9 align-self-center">
                        <div class="card">
                            <div class="card-title">
                                <h4>Doctors in the department</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Credentials</th>
                                                <th>Experience</th>
                                                <th>Fees</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<c:forEach var = "row" items = "${result.rows}">
                                            <tr>
                                                <td>
                                                    <div class="round-img">
                                                        <a href="Scheduler.jsp?" id="testlink" onclick="access()"><img src="images/avatar/4.jpg"  id="testlink" onclick="access()" alt=""></a>
                                                    </div>
                                                </td>
                                                <td>${row.fname} ${row.lname} </td>
                                                <td><span>${row.credentials}</span></td>
                                                <td><span>${row.experience}</span></td>
                                                <td><span>${row.cost}</span></td>
                                                <c:set var="status" value="${row.status}"/>
                                                <c:choose>
   													 <c:when test="${row.status==true}">
        												<td><span class="badge badge-success">Available</span></td> 
    											     </c:when>    
    										    	 <c:otherwise>
    										    	 	<% available=0; %>
        												<td><span class="badge badge-danger" onclick="access()">Not Available</span></td> 
    										    	 </c:otherwise>
											    </c:choose>
                                            <c:set var="dId" value="${row.dId}" scope="session" />
                                            <c:set var="enable" value="false" scope="session" />
                           
                                            </tr>
                                            </c:forEach>
                                           <!--  <tr>
                                                <td>
                                                    <div class="round-img">
                                                        <a href="doc-schedule.html"><img src="images/avatar/2.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td>John Abraham</td>
                                                <td><span>MBBS, MD</span></td>
                                                <td><span>4 yrs</span></td>
                                                <td><span class="badge badge-success">Available</span></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="round-img">
                                                        <a href="doc-schedule.html"><img src="images/avatar/3.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td>John Abraham</td>
                                                <td><span>MBBS, MD</span></td>
                                                <td><span>2 yrs</span></td>
                                                <td><span class="badge badge-danger">Not Available</span></td>
                                            </tr>
                                           
                                            <tr>
                                                <td>
                                                    <div class="round-img">
                                                        <a href="doc-schedule.html"><img src="images/avatar/4.jpg" alt=""></a>
                                                    </div>
                                                </td>
                                                <td>John Abraham</td>
                                                <td><span>MBBS, MD</span></td>
                                                <td><span>3 yrs</span></td>
                                                <td><span class="badge badge-success">Available</span></td>
                                            </tr>
          -->                                   
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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


    <script src="js/lib/datamap/d3.min.js"></script>
    <script src="js/lib/datamap/topojson.js"></script>
    <script src="js/lib/datamap/datamaps.world.min.js"></script>
    <script src="js/lib/datamap/datamap-init.js"></script>

    <script src="js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="js/lib/weather/weather-init.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/lib/owl-carousel/owl.carousel-init.js"></script>


    <script src="js/lib/chartist/chartist.min.js"></script>
    <script src="js/lib/chartist/chartist-plugin-tooltip.min.js"></script>
    <script src="js/lib/chartist/chartist-init.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>

</body>

</html>
<%-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor List</title>

</head>
<body>
<%String id=request.getParameter("id");
out.println(id);
%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/patient"
         user = "root"  password = "root"/>

      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from doctordata where department='<%=id%>';
      </sql:query>
<form action="Scheduler.jsp">      
<table  align="center">
        <caption><c:out value="<%=id%>"></c:out></caption>
             <c:forEach var = "row" items = "${result.rows}">
            <tr>
            <td><img src="${request.contextPath}/ImageGetter?dept=<%=id%>" width="50" height="50"/></td>
           
            <td><img src='<c:out value="${row.photo}"></c:out>' width="50" height="50"/></td>
               <td><input type="text" name="fn" value='<c:out value="${row.fname}"></c:out>' disabled="disabled">
               <td><input type="text" name="ln" value='<c:out value="${row.lname}"></c:out>' disabled="disabled">
               <td><input type="text" name="cost" value='<c:out value="${row.cost}"></c:out>' disabled="disabled">
               <td><input type="text" name="cre" value='<c:out value="${row.credentials}"></c:out>' disabled="disabled">
               <td><input type="text" name="ex" value='<c:out value="${row.experience}"></c:out>' disabled="disabled">	
                <td><input type="text" name="status" value='<c:out value="${row.status}"></c:out>' disabled="disabled">	 
               <td><input type="radio" name="id" value='<c:out value="${row.dId}"></c:out>'/>Select Doctor</td>
            	<c:set var="dId" value="${row.dId}" scope="session" />
            </tr>
         </c:forEach>
         <tr align="center">
            <td colspan="3"><input type="submit" value="Check Availibilty" ></td>
        </tr>
    </table>    
    </form>
</body>
</html> --%>