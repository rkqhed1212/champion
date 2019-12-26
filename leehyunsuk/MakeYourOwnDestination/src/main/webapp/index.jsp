<!DOCTYPE html>
<html lang="utf-8">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 4, from LayoutIt!</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
	$(function () {
		$("#signin").click(function () {
			 location.href("");
		});
	});
	
	</script>
  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				Make Your Own Destination
			</h3>
			<div class="row">
				<div class="col-md-4">
					<div class="dropdown">
						 
						<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown">
							Action
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							 <a class="dropdown-item disabled" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<h2>
						Search Bar
					</h2>
					
					<p>
						<a class="btn" href="#"></a>
					</p>
				</div>
				<div class="col-md-4">
					 
					<button type="button" class="btn btn-success" onclick="location.href='login.jsp'">
						Login
					</button> 
					<button type="button" class="btn btn-success" id="signin" onclick="location.href='signup.jsp'">
						Sign Up
					</button> 
					<button type="button" class="btn btn-success">
						To the Board
					</button>
				</div>
			</div>
			<div class="jumbotron">
				<h2>
					MAP
				</h2>
			</div>
			<div class="page-header">
				<h3 align="right">
					<span>Copyright @ Champion</span>
				</h3>
			</div>
		</div>
	</div>
</div>

    
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/scripts.js"></script>
  </body>
</html>