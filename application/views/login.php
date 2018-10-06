<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body id="cas">
    <div style="position:relative;">
        <title>Single Sign On - Universitas Jember</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<?php echo base_url('assets/sso_files/font-awesome.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/sso_files/cas2.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/sso_files/metro.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/sso_files/metro-icons.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/sso_files/metro-responsive.css') ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url('assets/sso_files/metro-schemes.css') ?>" rel="stylesheet" type="text/css" />
        <link rel="icon" href="https://sso.unej.ac.id/cas/favicon.ico" type="image/x-icon">
        <script src="<?php echo base_url('sets/sso_files/zxcvbn.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('sets/sso_files/jquery.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('sets/sso_files/zmetro.js') ?>" type="text/javascript"></script>
        <script src="<?php echo base_url('sets/sso_files/jquery_002.js') ?>" type="text/javascript"></script>
        <style>
            .app-bar-element {
                padding: 0px !important;
            }
        </style>
        <div class="container">
            <div class="app-bar darcula no-pc">
                <a class="app-bar-element">
                    <span id="toggle-tiles-dropdown" class=""><span class="mif-apps mif-2x"></span><b>MENU SISTER</b></span>
                </a>
                <div class="app-bar-drop-container" data-role="dropdown" data-toggle-element="#toggle-tiles-dropdown" data-no-close="false" style="width: 270px;">
                    <a class="app-bar-element">
                    </a>
                    <div class="tile-container bg-white">
                        <a class="app-bar-element">
                        </a>
                        <a href="https://sister.unej.ac.id/site/logincas">
                            <div class="tile fg-white" style="background-color:#c62828;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/sister.png'); background-size: 70%; background-position:center;background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>SISTER</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="https://e-learning.unej.ac.id/login/index.php">
                            <div class="tile fg-white" style="background-color:#1976d2;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/7.svg'); background-size: 70%; background-position:center;background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>E-LEARNING</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="https://simangga.unej.ac.id/index.php?r=site/logincas">
                            <div class="tile fg-white" style="background-color:#00695c;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/1.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>SIMANGGA</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="https://simkeu.unej.ac.id/index.php/site/logincas">
                            <div class="tile fg-white" style="background-color:#f57f17;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/2.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>SIMKEU</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="https://sikd.unej.ac.id/index.php">
                            <div class="tile fg-white" style="background-color:#6a1b9a;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/3.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>SIKD</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="http://web.unej.ac.id/wp-login.php?redirect_to=http%3A%2F%2Fweb.unej.ac.id%2F">
                            <div class="tile fg-white" style="background-color:#f06292;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/6.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>FBUNEJ</b></div>
                                </div>
                            </div>
                        </a>
                        <a href="https://kawanda.unej.ac.id/index.php/login">
                            <div class="tile fg-white" style="background-color:#0d47a1;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/10.svg'); background-size: 50%; background-position:center; background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>KAWANDA</b></div>
                                    <span class="tile-badge bg-darkRed mif-star-full"></span>
                                </div>
                            </div>
                        </a>
                        <a href="https://uc3.unej.ac.id/login.php?do=ext&amp;bk=cas.client">
                            <div class="tile fg-white" style="background-color:#ffc107;" data-role="tile">
                                <div class="tile-content">
                                    <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                        <div style="width: 100%; height: 100%; background-image: url('/cas/images/8.svg'); background-size: 50%; background-position:center;background-repeat: no-repeat; border-radius: 0px;">
                                        </div>
                                    </div>
                                    <div class="tile-label"><b>UC3</b></div>
                                    <span class="tile-badge bg-darkRed mif-star-full"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div id="header">
                <div class="image-container"><a href="https://sister.unej.ac.id/"><img 
 src="<?php echo base_url('assets/sso_files/header.png') ?>"
               style="max-width:60%;margin:0px auto;"></a></div>
            </div>
            <div id="content" class="fl-screenNavigator-scroll-containere flex-grid">
                <div class="row">
                    <div class="cell">
                        <div class="box fl-panel" id="login">
                            <form action="<?php echo site_url('Clogin/proses'); ?>" method="post" id="fm1">
                                <div class="image-container">
                                    <img src="<?php echo base_url('assets/sso_files/key.svg') ?>">
                                </div>
                                <div style="display:table;border-collapse: separate;border-spacing: 10px;width:100%;">
                                    <div class="row fl-controls-left" style="display:table-row">
                                        <div style="display:table-cell">
                                            <label for="username" class="fl-label"><span class="accesskey">U</span>username:</label>
                                        </div>
                                        <div style="display:table-cell">
                                            <input type="text" name="username" class="form-control" placeholder="Username" />
                                            <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                        </div>
                                    </div>
                                    <div class="row fl-controls-left" style="display:table-row">
                                        <div style="display:table-cell">
                                            <label for="password" class="fl-label"><span class="accesskey">P</span>assword:</label>
                                        </div>
                                        <div style="display:table-cell">
                                            <input type="password" name="password" class="form-control" placeholder="Password" />
                                            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                            <span id="capslock-on" style="display:none;color:red;font-weight:bold;">
                                       <p>
                                          <i class="fa fa-exclamation-circle"></i>
                                          <span>CAPSLOCK key is turned on!</span>
                                            </p>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <br>
                                <div class="row btn-row" style="text-align:left;">
                                    <button type="submit" class="button primary">Log in</button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="<?php echo base_url('Cregistrasi'); ?>">
                                        <button class="image-button danger" type="button">Register
                                            <span class="icon mif-question bg-darkRed"></span>
                                        </button>
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="cell colspan8 no-tablet">
                        <div class="tile-container bg-transparent">
                            <a href="https://sister.unej.ac.id/site/logincas">
                                <div class="tile fg-white" style="background-color:#c62828;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/sister.png'); background-size: 70%;background-position:center; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#c62828;">
                                            Sistem Informasi Terpadu
                                            <br>Universitas Jember
                                            <br><span style="text-align:right">Copyright © UPT TI UNEJ</span>
                                        </div>
                                        <div class="tile-label"><b>SISTER</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="https://e-learning.unej.ac.id/login/index.php">
                                <div class="tile fg-white" style="background-color:#1976d2;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/7.svg'); background-size: 70%;background-position:center; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#1976d2;">
                                            Modular Object-Oriented Dynamic Learning Environment (MOODLE)
                                            <br><span style="text-align:right">Copyright © 1999 Martin Dougiamas and others</span>
                                        </div>
                                        <div class="tile-label"><b>E-LEARNING</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="https://simangga.unej.ac.id/index.php?r=site/logincas">
                                <div class="tile fg-white" style="background-color:#00695c;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/1.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#00695c;">
                                            Sistem Informasi Manajemen Anggaran
                                            <br>Universitas Jember
                                            <br><span style="text-align:right">Copyright © 1999 BAPSI UNEJ</span>
                                        </div>
                                        <div class="tile-label"><b>SIMANGGA</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="https://simkeu.unej.ac.id/">
                                <div class="tile fg-white" style="background-color:#f57f17;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/2.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#f57f17;">
                                            Sistem Informasi Keuangan
                                            <br>Universitas Jember
                                            <br><span style="text-align:right">Copyright © Keuangan Unej</span>
                                        </div>
                                        <div class="tile-label"><b>SIMKEU</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="https://sikd.unej.ac.id/index.php">
                                <div class="tile fg-white" style="background-color:#6a1b9a;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/3.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#6a1b9a;">
                                            Sistem Kearsipan Dinamis
                                            <br><span style="text-align:right">Copyright © ANRI</span>
                                        </div>
                                        <div class="tile-label"><b>SIKD</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="http://web.unej.ac.id/wp-login.php?redirect_to=http%3A%2F%2Fweb.unej.ac.id%2F">
                                <div class="tile fg-white" style="background-color:#f06292;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/6.svg'); background-size: cover; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#f06292;">
                                            Forum Blogger Universitas Jember
                                        </div>
                                        <div class="tile-label"><b>FBUNEJ</b></div>
                                    </div>
                                </div>
                            </a>
                            <a href="https://kawanda.unej.ac.id/index.php/login">
                                <div class="tile fg-white" style="background-color:#0d47a1;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 100%; background-image: url('/cas/images/10.svg'); background-size: 50%;background-position:center; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#0d47a1;">
                                            Layanan Penyimpanan, Backup, dan Sharing File
                                        </div>
                                        <div class="tile-label"><b>KAWANDA</b></div>
                                        <span class="tile-badge bg-darkRed mif-star-full"></span>
                                    </div>
                                </div>
                            </a>
                            <a href="https://uc3.unej.ac.id/login.php?do=ext&amp;bk=cas.client">
                                <div class="tile fg-white" style="background-color:#ffc107;" data-role="tile">
                                    <div class="tile-content slide-up-2">
                                        <div class="slide">
                                            <div class="image-container image-format-fill" style="width: 100%; height: 100%;">
                                                <div style="width: 100%; height: 90%; background-image: url('/cas/images/8.svg'); background-size: 50%;background-position:center; background-repeat: no-repeat; border-radius: 0px;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slide-over text-small padding10" style="font-weight:bold;background-color:#ffc107;">
                                            Sistem
                                            <br>Pelayanan Pengaduan Keluhan Civitas Akademik Universitas Jember
                                        </div>
                                        <div class="tile-label"><b>UC3</b></div>
                                        <span class="tile-badge bg-darkRed mif-star-full"></span>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <p class="padding10 bg-transparent no-tablet">
                            <a href="https://kawanda.unej.ac.id/index.php/s/ZMNQZ29g2Rs3FtL">
                                <button class="image-button small-button primary">
                                    Manual Sister
                                    <span class="icon mif-file-pdf bg-darkCobalt"></span>
                                </button>
                            </a>
                            <a href="https://kawanda.unej.ac.id/index.php/s/mxFImSpS6BGW2ha">
                                <button class="image-button small-button primary">
                                    Koneksi WiFi ID
                                    <span class="icon mif-wifi-connect bg-darkCobalt"></span>
                                </button>
                            </a>
                            <a href="https://kawanda.unej.ac.id/index.php/s/gwzaOYhjHXCzBJy">
                                <button class="image-button small-button primary">
                                    &nbsp;&nbsp;&nbsp;Blog UNEJ
                                    <span class="icon mif-film bg-darkCobalt"></span>
                                </button>
                            </a>
                            <a href="https://kawanda.unej.ac.id/index.php/s/XBjgHJr0lsyxPyn">
                                <button class="image-button small-button primary">
                                    Tutorial Kawanda
                                    <span class="icon mif-film bg-darkCobalt"></span>
                                </button>
                            </a>
                            <br>
                        </p>
                    </div>
                </div>
                <br>
                <p class="padding10 bg-transparent no-pc"></p>
            </div>
            <div>
                <script src="<?php echo base_url('assets/sso_files/head.js') ?>" type="text/javascript"></script>
                <script src="<?php echo base_url('assets/sso_files/cas.js') ?>" type="text/javascript"></script>
            </div>
        </div>
    </div>
</body>

</html>