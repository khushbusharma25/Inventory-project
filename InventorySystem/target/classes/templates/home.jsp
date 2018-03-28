<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>InventoryManagement</title>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!-- 	<link rel="stylesheet" href="static/css/bootstrap.css"/>
		<link rel="stylesheet" href="static/css/style.css"/> -->
		
       
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/home" class="navbar-brand">Inventory</a>
			<form class="navbar-form navbar-left">
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/products" th:href="@{/products}">Insert Product</a></li>
					<li><a href="/customers" th:href="@{/customers}">Customer</a></li>
					<li><a href="/suppliers" th:href="@{/suppliers}" >Supplier</a></li>
					<li><a href="/displayproduct" th:href="@{/displayproduct}">Product List</a></li>
					<li>
					<p class="navbar-text navbar-right"> <a href="/" class="navbar-link">Logout</a></p>
					</li>
					
				</ul>
			</div>
			</form>
		</div>
	
	</div>
	
	<script src="static/js/bootstrap.min.js"></script>
	
	<div class="container" id="homeDiv">
		<div class="jumbotron text-center">
			<h1>Welcome to Inventory Management System</h1>
		</div>
	</div>
	
   
  
    <!-- <div class="container">
      <div class="hero-unit">
        <h1>Inventory Management</h1>
        <p>
          <a href="/products" th:href="@{/products}" class="btn btn-large btn-success">Insert Product</a>
          
          <a href="/customers" th:href="@{/customers}" class="btn btn-large btn-success">Customer</a>
           <a href="/suppliers" th:href="@{/suppliers}" class="btn btn-large btn-success">Supplier</a>
        
        </p>
      </div>
      </div> -->
      
</body>
</html>