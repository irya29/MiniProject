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
    
    <div class="box">
            <div class="box-header">
              <h3 class="box-title">Display All Member Data In Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <div class="form-group">
            	
            	<a class="btn btn-success" onclick="add()">Add</a>
            	</div>
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row">
                	<th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">ID</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Name</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">DOB</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">Actions</th>
                </tr>
                </thead>
                <tbody>
				<!-- loop over and print our customers -->
      			<c:forEach var="tempMember" items="${listMembers}">

       			<!-- construct an "update" link with customer id -->
       			<c:url var="updateLink" value="/update/${tempMember.memberid}">
<%--         		<c:param name="userId" value="${tempMember.id}" /> --%>
       			</c:url>
       			


       			<!-- construct an "delete" link with customer id -->
       			<c:url var="deleteLink" value="/delete/${tempMember.memberid}">
<%--         		<c:param name="userId" value="${tempMember.id}" /> --%>
       			</c:url>

       			<tr>
        		<td>${tempMember.memberid}</td>
        		<td>${tempMember.membername}</td>
        		<td>${tempMember.dob}</td>

        		<td>
         			<!-- display the update link --> 
         			<a href="${updateLink}" class="btn btn-success">Update</a>
         | 			<a href="${deleteLink}" class="btn btn-danger"
         			onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
        		</td>

       			</tr>

      			</c:forEach>
               </tbody>
              
              </table>
              </div>
              </div>
              
               </div>
            </div>
            <!-- /.box-body -->
          </div>
      
    </section>
    <!-- /.content --> 

<script>
function add()
{
     location.href = "memberform";
} 
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

