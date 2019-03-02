<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Google Nexus Website Menu</title>
		<meta name="description" content="A sidebar menu as seen on the Google Nexus 7 website" />
		<meta name="keywords" content="google nexus 7 menu, css transitions, sidebar, side menu, slide out menu" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="resources/menu/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="resources/menu/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="resources/menu/css/component.css" />
		<script src="resources/menu/js/modernizr.custom.js"></script>
		<script src="resources/popperjs/popper.min.js"></script>
		<script src="resources/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css" />
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="resources/fontawesome-free-5.3.1-web/css/all.min.css" />
		<script src="resources/fontawesome-free-5.3.1-web/js/all.min.js"></script>
		
		<script src="resources/bootboxjs/bootbox.all.min.js"></script>
		
	</head>
	<body>
		<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fas fa-bars fa-2x" style="margin-left: -12px; margin-bottom: -5px"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
								<li class="gn-search-item">
									<input placeholder="Search" type="search" class="gn-search">
									<a class="gn-icon gn-icon-search"><span>Search</span></a>
								</li>
								<li>
									<a class="gn-icon gn-icon-download">Teste</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-illustrator">Teste</a></li>
										<li><a class="gn-icon gn-icon-photoshop">Teste</a></li>
									</ul>
								</li>
								<li><a class="gn-icon gn-icon-cog">Teste</a></li>
								<li><a class="gn-icon gn-icon-help">Teste</a></li>
								<li>
									<a class="gn-icon gn-icon-archive">Teste</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-article">Teste</a></li>
										<li><a class="gn-icon gn-icon-pictures">Teste</a></li>
										<li><a class="gn-icon gn-icon-videos">Teste</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</nav>
				</li>
				<li><a href="https://github.com/gustuxd">Gustu</a></li>
				<li><a class="codrops-icon codrops-icon-drop"><span>Minha Conta</span></a></li>
			</ul>
		</div><!-- /container -->
		<script src="resources/menu/js/classie.js"></script>
		<script src="resources/menu/js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
		<form id="frmRedirect" action="RedirectController" method="POST">
			<input type="hidden" name="action" id="action" value=""/>
			<input type="hidden" name="id" id="id" value=""/>
		</form>
		
	</body>
	<script type="text/javascript">
		function redirect(action, val) {
			$('#action').val(action);
			$('#id').val(val);
			$('#frmRedirect').trigger('submit');
		}
		
		function msgSmall(msg) {
			bootbox.alert({
				locale: 'pt',
			    message: "<p class='h6'>"+msg+"</p>",
			    size: 'small',
			    centerVertical: true
			});
		}
</script>
</html>