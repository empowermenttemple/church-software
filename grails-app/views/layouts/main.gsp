<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<asset:stylesheet src="main.css"/>
  		<asset:stylesheet src="bootstrap.css"/>
		
		<g:layoutHead/>
	</head>
	<body>


	<nav class="nav navbar-default bg-primary" role="navigation">
     <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">LAMPSTAND</a>
        </div>
	<div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			<li><a href="#">Dashboard</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Members <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><g:link action='create' controller='member'><span class="glyphicon glyphicon-user"></span>&nbsp; Add New Member</g:link></li>
						<li><g:link action='list' controller='member'><span class="glyphicon glyphicon-list-alt"></span> All Members</g:link></li>
						<li><g:link action='find' controller='member'> Search Members</g:link></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Offering <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><g:link action='create' controller='offering'>Add Offering</g:link></li>
						<li><g:link action='index' controller='offering'>Today's Offering</g:link></li>
						<li class="divider"></li>
						<li><g:link action='search' controller='offering'>Search Offering</g:link></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Tithe and Tithe Payment <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><g:link action='create' controller='tithe'>Add New Tithe</g:link></li>
						<li><g:link action='list' controller='tithe'>All Tithe</g:link></li>
						<li class="divider"></li>
						<li><g:link action='create' controller='tithePayment'>New Tithe Payment</g:link></li>
						<li><g:link action='searchPayments' controller='tithePayment'>Search Tithe Payments</g:link></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Attendance and Guest <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><g:link action='create' controller='events'>Create Events or Service</g:link></li>
						<li class="divider"></li>
						<li><g:link action='create' controller='attendance'>New Attendance</g:link></li>
						<li><g:link action='index' controller='attendance'>List Attendance</g:link></li>
						<li><g:link action='search' controller='attendance'>Search Attendance</g:link></li>
						<li class="divider"></li>
						<li><g:link action='search' controller='guest'>Search Guest</g:link></li>
						<li><g:link action='index' controller='guest'>List Guest</g:link></li>
					</ul></li>
				<li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown">Pledge and Pledge Payments <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><g:link action='create' controller='pledge'>Create Pledge</g:link></li>
						<li><g:link action='index' controller='pledges'>Member Pledge's</g:link></li>
						<li class="divider"></li>
						<li><g:link action='find' controller='pledgePayment'>Add Pledge Payments</g:link></li>
					</ul></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				
			</ul>

		</div>
		<!-- /.navbar-collapse -->
			</div>
			</div>
	</nav>
		<g:layoutBody/>

		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<asset:javascript src="application.js"/>
	</body>
</html>
