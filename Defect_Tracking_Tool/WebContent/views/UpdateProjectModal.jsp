<%@page import="DAO.AddProjectDao"%>
<%@page import="Bean.AddProjectBean,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
</style>
</head>
<body>

	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header" style="background: darkkhaki;">
				<h4 class="modal-title">Update User</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-12">
						<div class="card" align="center" style="background-color: inherit">
							<form action="../UpdateProjectAction" method="POST">
								<%
									Object obj = session.getAttribute("id");
									int PM_Id = Integer.parseInt(obj.toString());
									List<AddProjectBean> list1 = AddProjectDao.ProjectDetails(PM_Id);
									for (AddProjectBean beanobj : list1) {
								%>
								<fieldset class="col-sm-12">
									<legend class="legend_border col-sm-3"
										style="padding-right: 5px;">Project Details</legend>
									<input type="hidden" name="uid" value="<%=beanobj.getPM_Id()%>">

									<div class="form-group row">
										<div class="col-sm-2">
											<label for="Project_Name">ProjectName</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="form-control"
												placeholder="Full Name" maxlength="100" name="Project_Name"
												value="<%=beanobj.getProject_Name()%>"
												onkeypress="return alphaOnly(event);"
												style="text-transform: uppercase;" required>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-2">
											<label for="SoftTools">SoftwareTools</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="from-control"
												placeholder="Software Tools" maxlength="100"
												name="Soft_Tools" value="<%=beanobj.getSoft_Tools()%>"
												onkeypress="return alphaOnly(event);"
												style="text-transform: uppercase;" required>
										</div>
									</div>
									<div class="from-group row">
										<div class="col-sm-2">
											<label for="NoOfModules">No Of Modules</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="from-control" id="noofmodules"
												value="<%=beanobj.getNo_Of_Modules()%>" name="No_Of_Modules"
												placeholder="No Of Modules">
										</div>
									</div>
									<div class="modal-footer f">
										<button type="submit" class="btn btn-success btn-md">Update</button>
									</div>
								</fieldset>
								<%
									}
								%>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer" style="background: darkkhaki;">
				<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</body>
</html>