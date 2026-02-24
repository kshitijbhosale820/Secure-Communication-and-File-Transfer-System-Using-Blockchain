<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%@ page import="java.sql.*"%>
<%@ page import="Com.Connection.*"%>
<%@page import="Dao.user"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Block Chain</title>
<link rel="favicon" href="assets1/images/favicon.png">
<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="assets1/css/bootstrap.min.css">
<link rel="stylesheet" href="assets1/css/font-awesome.min.css">
<link rel="stylesheet" href="assets1/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="assets1/css/da-slider.css" />
<link rel="stylesheet" href="assets1/css/style.css">
<script src="assets1/js/html5shiv.js"></script>
<script src="assets1/js/respond.min.js"></script>
</head>
<body>
	<div class="navbar navbar-inverse" style="background-color: black;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="OwnerHomePage.jsp">
					<h4>Block Chain</h4>
				</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">

					<li><a href="File_Upload.jsp">File Upload</a></li>
					<li><a href="Download.jsp">File Download</a></li>
					<li><a href="Send_Message.jsp">Send Message</a></li>
					<li><a href="File_Share.jsp">File Share</a></li>


					<li class="dropdown"><a href="LoginPage"
						class="dropdown-toggle" data-toggle="dropdown"><label
							style="color: white;"><%=session.getAttribute("O_Name")%></label><b
							class="caret"></b></a>

						<ul class="dropdown-menu">
							<li><a href="LoginPage"><label style="color: white;">Logout</label></a></li>

							<!-- <li><a href="#">Dropdown Link 1</a></li>
                            <li class="active"><a href="#">Dropdown Link 2</a></li> -->


						</ul></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	<!-- Header -->

	<!-- /Header -->


	<div id="courses"></div>
	<!-- container -->
	<section class="container">
		<br>
		<div class="row">
			<div class="col-md-4">
				<img src="./images/login.jpg" alt="" class="img-responsive">
			</div>
			<div class="col-md-8">
				<div>
					<div>

						<div class="panel panel-primary">
							<div class="panel-heading" align="center">File Upload Page</div>
							<br />
							<div class="panel-body">

								<form class="form-light mt-20" action="Send_Message_Data"
									method="post">
									<table class="table table-bordered">
										<tr>
											<td><b>Email Id</b></td>
											<td><select name="emailid"
												style="width: 95%; height: 30px" required="required">
													<option selected="selected">Select Email-Id</option>
													<%
													try {

														String str = "select * from tbluser";
														Connection conn = ConnectionFactory.getInstance().getConnection();
														Statement st01 = conn.createStatement();
														ResultSet rs01 = st01.executeQuery(str);

														while (rs01.next()) {
													%>
													<option value="<%=rs01.getString("U_Email_ID")%>"><%=rs01.getString("U_Email_ID")%></option>
													<%
													}

													} catch (Exception e) {

													}
													%>
											</select>
										</tr>
										<tr>
											<td><b>Message Data</b></td>
											<td><textarea id="send_message" required="required"
													name="send_message" rows="4" cols="80"></textarea></td>
										</tr>
										<tr>
											<td colspan="2" align="center"><input type="submit"
												value="Send Message"
												style="background: yellow; color: black;" class="button" />
											</td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets1/js/modernizr-latest.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets1/js/jquery.cslider.js"></script>
	<script src="assets1/js/custom.js"></script>
</body>
</html>