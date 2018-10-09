<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title><?php echo $this->config->item('nama')." | ".$this->config->item('kd_kwl'); ?> </title>

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
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/separate/pages/login.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/lib/font-awesome/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/lib/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/main.css">
</head>
<style type="text/css">
    body {
        background-image: url(<?php echo base_url(); ?>assets/theme/img/bg.jpg);
        background-repeat: no-repeat;
        background-position: 0 0;
        background-size: cover;
    }
    .sign-box {    
        background: transparent; 
        text-shadow: 0 0 2px #000; 
        border: transparent;
        color: white;
    }
    .form-error-text-block {
        background-color: transparent !important;
        color: #fa424a;
    }   
    
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
</style>
<body>


<script src="<?php echo base_url(); ?>assets/theme/js/lib/jquery/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>assets/theme/js/lib/tether/tether.min.js"></script>
<script src="<?php echo base_url(); ?>assets/theme/js/lib/bootstrap/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/theme/js/plugins.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/theme/js/lib/match-height/jquery.matchHeight.min.js"></script>
    <script>
        $(function() {
            $('.page-center').matchHeight({
                target: $('html')
            });

            $(window).resize(function(){
                setTimeout(function(){
                    $('.page-center').matchHeight({ remove: true });
                    $('.page-center').matchHeight({
                        target: $('html')
                    });
                },100);
            });
        });
    </script>
<script src="<?php echo base_url(); ?>assets/theme/js/app.js"></script>

<?php //$this->load->view('slider'); ?>
    <div class="page-center">
        <div class="page-center-in">
            <div class="container-fluid">
                <?php echo form_open('suratkemenag/auth/user_login_process', array(
                    'class' => 'sign-box','id' => 'form-signin_v2', 'name' => 'form-signin_v2'
                ));?> 
                    <?php if ($this->session->flashdata('notif')) { ?>
                        <div class="form-error-text-block" style="padding: 12px 14px 12px;"><span><?php echo $this->session->flashdata('notif'); ?></span></div>
                    <?php } ?>
                    <div class="sign-avatar">
                        <img src="<?php echo base_url(); ?>assets/theme/img/logo.png" alt="">
                    </div>
                    <header class="sign-title"><?php echo $this->config->item('nama')." | ".$this->config->item('kd_kwl'); ?> </header>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Username" id="username"
                        name="username"
                        data-validation="[NOTEMPTY]"
                        data-validation-message="Username tidak boleh kosong"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password" id="password" 
                        name="password"
                        data-validation="[NOTEMPTY]"
                        data-validation-message="Password tidak boleh kosong"/>
                    </div>
                    <button type="submit" class="btn btn-rounded">Sign in</button>
                <?php echo form_close();?>
            </div>
        </div>
        <?php echo $this->session->flashdata('item'); ?>
    </div>

    <div class="footer-copyright">
            <p>© 2018 <?php if(date("Y")!='2018') { echo "- ".date("Y"); } ?> Divisi IT Kemenag Jatim. by <a href="https://api.whatsapp.com/send?phone=6285645862323&text=AplikasiSuratKabko"><b>Fitri</b>&nbsp(klik WA)</a></p>
    </div>
<script src="<?php echo base_url(); ?>assets/theme/js/lib/input-mask/jquery.mask.min.js"></script>

<script src="<?php echo base_url(); ?>assets/theme/js/lib/html5-form-validation/jquery.validation.min.js"></script>
<script>
    $(function() {
        $('#form-signin_v2').validate({
            submit: {
                settings: {
                    inputContainer: '.form-group',
                    errorListClass: 'form-error-text-block',
                    display: 'block',
                    insertion: 'prepend'
                }
            }
        });
    });
</script>
</body>
</html>