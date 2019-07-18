<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>Login Page</title>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
<!--web-fonts-->
</head>

<body>
<!--header-->
	<div class="header-w3l">
		<h1>Zipper Login</h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<form action="lservice" method=get>
			<input placeholder="Your zcode" name="name" class="user" type="text" required=""><br>
			<input  placeholder="Password" name="password" class="pass" type="password" required=""><br>
			<input type="submit" value="">
		</form>
	</div>
</div>
<!--//main-->

</body>
</html>