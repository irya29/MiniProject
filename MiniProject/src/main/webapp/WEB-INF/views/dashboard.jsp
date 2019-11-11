<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master User

      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    	<h1 style="text-align: center;">Selamat Datang</h1>	
    	<div class="container" style="margin-top:25px; ">
    		<div class="row" style="margin-right: 50px;">
    			<div class="col-lg-6" style="background-color: #64D7D7 !important; padding-bottom: 11%;">
    				<div class="col-md-6 " style="margin-top: 20px;">
			          <!-- small box -->
			          <div class="small-box bg-yellow">
			            <div class="inner">
			              <h3>Members</h3>
			              <p>All Data Members</p>
			            </div>
			            <div class="icon">
			              <i class="ion ion-person-add"></i>
			            </div>
			            <a href="${pageContext.request.contextPath }/member" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			          </div>
			        </div>
			        <!-- ./col -->
			         <!-- small box -->
			         <div class="col-md-6" style="margin-top: 20px;">
			          <div class="small-box bg-red">
			            <div class="inner">
			              <h3>Assets</h3>
			              <p>All Data Assets</p>
			            </div>
			            <div class="icon">
			              <i class="ion ion-pie-graph"></i>
			            </div>
			            <a href="${pageContext.request.contextPath }/asset" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
			          </div>
			        </div>
			        <!-- ./col -->
    			</div>
		        <div class="col-lg-6">
		        	 <!-- Calendar -->
			          <div class="box box-solid bg-green-gradient">
			            <div class="box-header">
			              <i class="fa fa-calendar"></i>
			
			              <h3 class="box-title">Calendar</h3>
			              <!-- tools box -->
			              <div class="pull-right box-tools">
			                <!-- button with a dropdown -->
			                <div class="btn-group">
			                  <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
			                    <i class="fa fa-bars"></i></button>
			                  <ul class="dropdown-menu pull-right" role="menu">
			                    <li><a href="#">Add new event</a></li>
			                    <li><a href="#">Clear events</a></li>
			                    <li class="divider"></li>
			                    <li><a href="#">View calendar</a></li>
			                  </ul>
			                </div>
			                <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
			                </button>
			                <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i>
			                </button>
			              </div>
			              <!-- /. tools -->
			            </div>
			            <!-- /.box-header -->
			            <div class="box-body no-padding">
			              <!--The calendar -->
			              <div id="calendar" style="width: 100%"></div>
			            </div>
		        </div>
    		</div>
    	</div>	
     </section>
    <!-- /.content --> 
</script>
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath }/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${pageContext.request.contextPath }/resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath }/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath }/resources/bower_components/raphael/raphael.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath }/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath }/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath }/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath }/resources/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath }/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath }/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath }/resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath }/resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath }/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath }/resources/dist/js/demo.js"></script>
