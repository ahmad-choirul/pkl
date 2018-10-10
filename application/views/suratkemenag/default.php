<!DOCTYPE html>
<?php
/**
 * Terimakasi telah menggunkan aplikasi ini
 *
 * Aplikasi ini dibuat untuk digratiskan dengan ijin sebelumnya
 *
 * Apabila anda membutuhkan asistensi silahkan kontak ke +6285645862323 (FITRI)
 *
 * Kami juga menerima pembuatan aplikasi untuk kepentingan komersial
 *
 * @category   AplikasiSurat
 * @author     Original Author <raihani.fitri@gmail.com>
 * @copyright  2017-2018
 * @version    AS-v0.1-KabKo
 *
 * MENYEBARKAN / MENCOPY / MEMASANG DI TEMPAT LAIN TANPA IJIN PEMBUAT ADALAH TIDAK TERPUJI
 *
 */
?>
<!-- Apabila ada kendala atau saran silahkan hubungi +6285645862323 (FITRI), MENYEBARKAN / MENCOPY / MEMASANG DI TEMPAT LAIN TANPA IJIN PEMBUAT ADALAH TIDAK TERPUJI -->
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title><?php echo $this->config->item('nama')." | ".$this->config->item('kd_kwl'); ?></title>

	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.144x144.png" rel="apple-touch-icon" type="image/png" sizes="144x144">
	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.114x114.png" rel="apple-touch-icon" type="image/png" sizes="114x114">
	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.72x72.png" rel="apple-touch-icon" type="image/png" sizes="72x72">
	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.57x57.png" rel="apple-touch-icon" type="image/png">
	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.png" rel="icon" type="image/png">
	<link href="<?php echo base_url(); ?>assets/theme/img/favicon.ico" rel="shortcut icon">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/lib/font-awesome/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/lib/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/main.source.css">
    
	<?php if(!isset($data['tabel'])) {
		echo '<script src="'.base_url().'assets/theme/js/lib/jquery/jQuery-2.1.4.min.js"></script>';
		echo '<script src="'.base_url().'assets/theme/js/lib/jquery/jquery-ui.min.js"></script>';
	} else {
		echo "<!-- jquery disable by grocery crud -->";
	}?>

	<style type="text/css">
		.site-header { background: #263543 !important; }
		.menuaktif { background-color: #122833 !important; }
		.site-header .site-logo img { top : 17px; }
		.site-header .site-header-content { width: 80% !important; }
		.footer-copyright {
		    position: fixed;
		    left: 0;
		    bottom: 0;
		    width: 100%;
		    height: 20px;
		    background-color: white;
		    color: #9e9e9e;
		    text-align: right;
		    padding-right: 20px;
		}
		.side-menu .side-menu-avatar {
		  background: #263543 !important;
		}
	</style>
</head>
<body class="with-side-menu theme-side-madison-caribbean" id="blockui-element-container-dark">

	<header class="site-header">
	    <div class="container-fluid">
	
	        <a href="#" class="site-logo" style="padding: 0px 60px 0px 35px !important;">
	            <img class="hidden-md-down" src="<?php echo base_url(); ?>assets/theme/img/surat.png" alt="">
	            <img class="hidden-lg-up" src="<?php echo base_url(); ?>assets/theme/img/surat-mob.png" alt="">
	        </a>
	
	        <button id="show-hide-sidebar-toggle" class="show-hide-sidebar">
	            <span>toggle menu</span>
	        </button>
	
	        <button class="hamburger hamburger--htla">
	            <span>toggle menu</span>
	        </button>
	        <div class="site-header-content">
	        	<?php $this->load->view('suratkemenag/header-notif-profile'); ?>
	        </div><!--.site-header-content-->
	    </div><!--.container-fluid-->
	</header><!--.site-header-->

	<div class="mobile-menu-left-overlay"></div>
       	<?php $this->load->view('suratkemenag/menu'); ?>

	<div class="page-content">
       	<?php //$this->load->view('x-chart'); ?>
       	<?php $this->load->view($data['main_page']); ?>
	</div><!--.page-content-->
	
	<div class="footer-copyright">
            <p>© 2018 <?php if(date("Y")!='2018') { echo "- ".date("Y"); } ?> Divisi IT Kemenag Jatim.
    </div>
	<script src="<?php echo base_url(); ?>assets/theme/js/lib/tether/tether.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/theme/js/lib/bootstrap/bootstrap.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/theme/js/plugins.js"></script>
	<script src="<?php echo base_url(); ?>assets/theme/js/app.js"></script>
	<?php if (isset($_GET['w'])) { $this->load->view('suratkemenag/popup'); } ?>
   
</body>
</html>