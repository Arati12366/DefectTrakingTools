<%@ page import="Bean.AddProjectBean,java.util.List"%>
<%@ page import="DAO.AddProjectDao"%>
<%@ page import="Bean.AddUserBean,java.util.List"%>
<%@ page import="DAO.AddUserDao"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../required/assets/images/favicon.png">
<title>User_Details</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="../required/assets/libs/select2/dist/css/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="../required/assets/libs/jquery-minicolors/jquery.minicolors.css">
<link rel="stylesheet" type="text/css"
	href="../required/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="../required/assets/libs/quill/dist/quill.snow.css">
<link href="../required/dist/css/style.min.css" rel="stylesheet">
<link href="../required/dist/css/styleborder.css">
<link href="../required/dist/css/AddUser.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<style type="text/css">
label {
	font-size: px;
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	color: black;
}
legend.legend_border {
	background: #8B0000;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	box-shadow: 0 0 10px #0d73a0;
	border-radius: 8px;
	display: block;
	padding-left: 0px;
	padding-right: 10px;
	color: white;
}
.button {
	background-color: #008CBA; /* Blue */
	border: none;
	color: white;
	padding: 15px 15px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
.button2 {
	background-color: #f44336;
} /* Red */
.not-allowed {cursor: not-allowed;}
</style>

</head>

<body>

	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<%@ include file="Header.jsp"%>
		<div class="page-wrapper">
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
					<div class="row">
					<div class="col-md-12" >
						<div class="card"  align="center" ></div>
					</div>
						</div>
						<div class="row">
						<div class="col-md-12">
						<div class="card" align="center">
						<div class="card-body" style="background: linear-gradient(to bottom left,#9DC183, transparent);">
						<h5 class="card-title"></h5>
							<form action="../AssginProject_Action" method="post">
								<fieldset  class="col-sm-10">
									<legend class="legend_border col-sm-3"style="padding-right:5px;">Assign Details</legend>
								
									<div class="form-group row text-right">
									<!--  	<label for="ProjectName"
											class="col-md-4 text-center control-label col-form-label">Select Project:
										</label>-->
										<div class="col-md-5">
									
											<label for="orgName"
												class=" text-left control-label col-form-label">Select Project</label>
										</div>
											<div class="col-md-5">
												<div class="input-group md-form form-sm form-2 pl-0 ">
												<input class="  form-control my-0 py-1 lime-border" type="text"   list="projectlist" placeholder="Search"  id="projectid" aria-label="Search" >
												<datalist id="projectlist">											
									
												<%
											    	List<AddProjectBean> rb =AddProjectDao.projectName();
													
													 for(AddProjectBean objpro:rb)
													{
														 String projectname = objpro.getProject_Name();
														 System.out.println("Project_Name="+projectname);
											    	%>
											    	<option value="<%=projectname%>"><%=projectname%></option>
													
													<% 
													}
													 %>
											  	</datalist>
											  	 
											</div>    		
											</div>
												<div class="input-group-append">
											<span class="input-group-text-left lime lighten-2">
											
											<button class="btn btn-secondary" type="button"><i class="fa fa-search"></i></button></span>&nbsp;&nbsp;
											</div>
											<div></div>
											<div>
											<button type="button" class="btn btn-primary"  onclick="addProject()" data-toggle="modal" data-target="#assignProject">
													<!-- <button class="btn btn-md btn-warning" type="button" style="background-color: darkmagenta" data-toggle="modal" data-target="#projectid"> -->
															<i class="fas fa-plus" ></i>
													</button>
													</div>
									</div><br>
									<div>
									</div>
									<div class="form-group row text-right">
								<div class="col-md-5">
									<label for="orgName"
												class=" text-left control-label col-form-label">Assgin Project</label>
										</div>
											<div class="col-md-6 ">
												<div class="input-group md-form form-sm form-2 pl-0 ">
												<input class=" form-control my-0 py-1 lime-border" type="text" placeholder="Search" disabled="disabled" id="assginid" aria-label="Search">
													<div class="input-group-append">
														<span class="input-group-text-left lime lighten-2">
											
														<button class="btn btn-secondary" type="button" disabled="disabled"><i class="fa fa-search"></i></button></span>&nbsp;&nbsp;
													</div>
													<div>
													<button class="btn btn-md btn-warning"  disabled="disabled">
															<i class="fas fa-plus" ></i>
														</button>
													</div>
												</div>
											</div>
									</div>
										
							
							
									<div class="form-group row">
                                    <div class="col-md-12"> 
								    <button class="  btn  btn-md  button float-center disabled "   class="register" type="submit"  style="border-radius: 12px" value="Assign" >Assign</button>&nbsp;&nbsp;
                                     <button class="btn btn-md btn-warning float-center"  class="cancel" type="reset" style="border-radius: 12px"  value="Cancel">Cancel</button>
                                     
                                    </div>
                                </div>
								</fieldset>
								
								</form>
							</div>
						</div>
					</div>
				</div>
			<div class="card" align="center">
		<div class="card-body" style="background: linear-gradient(to bottom left,#9DC183, transparent);">
		<fieldset  class=" col-sm-10"  id="tableid" disabled="disabled">
		
			<legend class="legend_border col-sm-6"style="padding-right: 5px;">ASSIGN PROJECT DATATABLE</legend>			<div class="table-responsive">
			<table id="zero_config"
				 class="table table-striped table-hover table-bordered">
					<thead>
						<tr>
						<th>Roll</th>
						<th>Name</th>
						<th>Email</th>
						<th>Action</th>
						</tr>
					</thead>
					
					
									</table>
			</div>
			</fieldset>
		</div>
		</div>
		

	

		<div class="modal projectContent" id="assignProject" role="dialog"></div>

		<!-- ============================================================== -->
		<!-- End Container fluid  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- footer -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- End footer -->
		<!-- ============================================================== -->

	</div>
	
	
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
</div>
</div>
	
		<!-- ============================================================== -->
		<!-- End Wrapper -->
		<!-- ============================================================== -->
	

		<!-- ============================================================== -->
		<!-- All Jquery -->
		<!-- ============================================================== -->
		<script src="../required/dist/js/Defecttrackingtool.js"></script>
	
		<script src="../required/assets/libs/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap tether Core JavaScript -->
		<script src="../required/assets/libs/popper.js/dist/umd/popper.min.js"></script>
		<script
			src="../required/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- slimscrollbar scrollbar JavaScript -->
		<script
			src="../required/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
		<script src="../required/assets/extra-libs/sparkline/sparkline.js"></script>
		<!--Wave Effects -->
		<script src="../required/dist/js/waves.js"></script>
		<!--Menu sidebar -->
		<script src="../required/dist/js/sidebarmenu.js"></script>
		<!--Custom JavaScript -->
		<script src="../required/dist/js/custom.min.js"></script>
		<!-- This Page JS -->
		<script
			src="../required/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
		<script src="../required/dist/js/pages/mask/mask.init.js"></script>
		<script
			src="../required/assets/libs/select2/dist/js/select2.full.min.js"></script>
		<script src="../required/assets/libs/select2/dist/js/select2.min.js"></script>
		<script
			src="../required/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
		<script
			src="../required/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
		<script
			src="../required/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
		<script
			src="../required/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
		<script
			src="../required/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		<script src="../required/assets/libs/quill/dist/quill.min.js"></script>
		<script>
			//***********************************//
			// For select 2
			//***********************************//
			$(".select2").select2();
			/*colorpicker*/
			$('.demo').each(function() {
				//
				// Dear reader, it's actually very easy to initialize MiniColors. For example:
				//
				//  $(selector).minicolors();
				//
				// The way I've done it below is just for the demo, so don't get confused
				// by it. Also, data- attributes aren't supported at this time...they're
				// only used for this demo.
				//
				$(this).minicolors({
					control : $(this).attr('data-control') || 'hue',
					position : $(this).attr('data-position') || 'bottom left',
					change : function(value, opacity) {
						if (!value)
							return;
						if (opacity)
							value += ', ' + opacity;
						if (typeof console === 'object') {
							console.log(value);
						}
					},
					theme : 'bootstrap'
				});
			});
			/*datwpicker*/
			jQuery('.mydatepicker').datepicker();
			jQuery('#datepicker-autoclose').datepicker({
				autoclose : true,
				todayHighlight : true
			});
			var quill = new Quill('#editor', {
				theme : 'snow'
			});
		</script>
		<script>
		
		$( "#projectid" ).keypress(function( event ) {
			  if ( event.which == 13 ) {
				 $("#assginid").prop("disabled", false); 	  
				 $("#regBut").prop("disabled", false); 
				//  $("#tableid").prop("disabled", false);    
					document.getElementById("regBut").style.color="";
				  
			  }
			});
		

		//$(document).ready(function(){
			
			//$.('input[id="assginid"]').attr('disabled', true);
			//$.('input[id="projectid"]').on('keyup',function(){
				
				//if($(this).val==13)
					//{
					//$.('input[id="assginid"]').attr('disabled',false);
					
					//}
				
			//});
			
	//	});
		</script>
<script>

function addProject(){
	alert("hi");
	$.ajax({
		url:"ProjectModal.jsp",
		success: function(response){
			alert("inside success");
			$(".projectContent").html(response);
		}
	
		
	});
}

</script>
	
	
	
</body>

</html>