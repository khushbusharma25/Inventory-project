<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form id="loginform">
		<label>UserName</label>
		<input type="text" path="userName" name="username" id="username">
		
		<label>password</label>
		<input type="password" path="password" id="password">
		
		<input type="button" value="submit" id="submit">
	</form>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
			
		var username = $("#username").val();
		var password = $("#password").val();
		
		// Checking for blank fields.
		if( username =='' || password ==''){
			$('input[type="text"],input[type="password"]').css("border","2px solid red");
			$('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px red");
			alert("Please fill all fields...!!!!!!");
		}else {
			
			$.ajax({
		           type: "POST",
		           url: "/user/authenticate",
		           dataType: "json",
		           data:  $('#loginform').serialize(), // serializes the form's elements.
		           success: function(data)
		           {
		               if(data="success"){
		            	   window.location.replace("/home");
		               }
		               else{
		            	   alert("Username or password is Incorrect..!!!");
		               }
		           }
		       });
		}
	});
});

</script>
</html>

