<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Hospice Medical</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<?php echo base_url();?>/css/bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/linericon/style.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="<?php echo base_url();?>/vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="<?php echo base_url();?>/css/style.css">
  <link rel="stylesheet" href="<?php echo base_url();?>/css/responsive.css">
  <?php 
     	if(isset($css_files))
     	{
     		foreach ($css_files as $ruta_css) {
     			?>
     			<link rel="stylesheet" type="text/css" href="<?php echo $ruta_css?>">
     			<?php
     		}
       }
       ?>
</head>
<!--================Header Menu Area =================-->
<header class="header_area">
		<div class="top_menu row m0">
			<div class="container">
				<div class="float-left">
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<!--Telefono personas -->
							<a href="login.html">
								<i class="lnr lnr-phone-handset"></i>
								012-6532-568-9746
							</a>
						</li>
						<li>
							<!-- email usuario  -->
							<a href="#">
								<i class="lnr lnr-envelope"></i>
								emergency@colorlib.com
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html">
						<!-- Foto del usuario -->
						<img style="width: 90px !important;border-radius: 100% !important" class= "img-circle profile_img" src="<?php echo base_url()."assets/imagenes/usuarios/".$fotousuario;?>" alt="">
						<?php echo $nombreusuario;?>
					</a>
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<div class="row ml-0 w-100">
							<div class="col-lg-12 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item active">
										<a class="nav-link" href="citas">Agendar Citas</a>
									</li>
									<li class="nav-item ">
									<a class="nav-link" href="<?php echo site_url('doctor')?>">Doctores</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="<?php echo site_url('usuarios')?>">Administrativos</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="<?php echo site_url('pacientes')?>">Pacientes</a>
									</li>
									<li class="nav-item ">
									<a class="nav-link" href="<?php echo site_url('orden')?>">Ordenes</a>
									</li>
									<li class="nav-item ">
									<a class="nav-link" href="<?php echo site_url('principal')?>">Retornar a principal</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->	   
	   