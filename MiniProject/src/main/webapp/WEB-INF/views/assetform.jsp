<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Asset Form</h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">Master</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    
    <div class="box">
     
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
        <!-- left column -->
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
<!--             <div class="box-header with-border"> -->
<!--               <h3 class="box-title">Product Form</h3> -->
<!--             </div> -->
            <!-- /.box-header -->
            <!-- form start -->
            <form:form modelAttribute="asset" method="post" action="saveasset"> 
            <div class="box-body">
                <div class="form-group">
                  <label for="assetnumber">Asset Number</label>
                	<form:input type="text" path="assetnumber" id="assetnumber" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="assetnumber" class="help-inline"/>
					</div>  
				</div>
				<div class="form-group">
                  <label for="assetname">Asset Name</label>
                	<form:input type="text" path="assetname" id="assetname" class="form-control input-sm"/>
					<div class="has-error">
						<form:errors path="assetname" class="help-inline"/>
					</div>  
				</div>
                 <div class="form-group">
                  <label for="category">Category</label>
                  <form:select path="category" id="category" class="form-control input-sm">
						<option value="Asset Tetap">Asset Tetap</option>
	            		<option value="Asset Bergerak">Asset Bergerak</option>
	              </form:select>
                 </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>           
            </form:form>
          </div>
          <!-- /.box -->
            </div>
            <!-- /.box-body -->
          </div>
      </div>
      </div>
    </section>
    <!-- /.content --> 



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
