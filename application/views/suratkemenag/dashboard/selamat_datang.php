<?php 
    $logged_in = $this->session->userdata('logged_in'); 
	
	$q = "SELECT * FROM users_rules where id=".$logged_in['id_rules']." LIMIT 1;";
	$query = $this->db->query($q);
	$row = $query->row(0);

	$q2 = "SELECT * FROM users where id=".$logged_in['id']." LIMIT 1;";
	$query2 = $this->db->query($q2);
	$row2 = $query2->row(0);
	
	$q3 = "SELECT count(1) jml FROM t_suratmasuk;";
	$query3 = $this->db->query($q3);
	$row3 = $query3->row(0);
	
	$q4 = "SELECT count(1) jml FROM t_suratkeluar;";
	$query4 = $this->db->query($q4);
	$row4 = $query4->row(0);
?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/separate/pages/profile.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/separate/pages/widgets.min.css">
<div class="row">
	<div class="col-lg-3 col-lg-pull-6 col-md-6 col-sm-6">
		<section class="box-typical">
			<div class="profile-card">
				<div class="profile-card-photo">
					<?php if ($logged_in['foto']==null) { ?>
		            	<img src="<?php echo base_url(); ?>assets/theme/img/logo.png" alt="" style="-webkit-border-radius: 0% !important; border-radius: 0% !important; ">
		            <?php } else  { ?>
		            	<img src="<?php echo base_url(); ?>file_foto/<?php echo $logged_in['foto']; ?>">
		            <?php } ?>
				</div>
				<div class="profile-card-name">Selamat Datang !</div>
				<div class="profile-card-status"><?php echo $logged_in['name']; ?></div>
				<div class="profile-card-location"><?php echo $row->rules; ?></div>
				
			</div><!--.profile-card-->
		</section><!--.box-typical-->
		<?php if ($row2->password=='123456'||$row2->password==$logged_in['username']) { ?>
			<div class="form-error-text-block">
				<ul>
					<li>Password Anda Masih Standar.</li>
					<li>Harap mengubah dengan password yang sulit ditebak dan mudah diingat.</li>
				</ul>
			</div>
		<?php } ?>
	</div><!--.col- -->



	<div class="col-lg-6 col-lg-push-3 col-md-12">
		<section class="widget widget-time aquamarine" onLoad="waktu()">
			<script type="text/javascript">
			    window.setTimeout("waktu()",1000);
			    function waktu() {
			        var tanggal = new Date();
			        setTimeout("waktu()",1000);
			        document.getElementById("jam").innerHTML = tanggal.getHours();
			        document.getElementById("menit").innerHTML = tanggal.getMinutes();
			        document.getElementById("detik").innerHTML = tanggal.getSeconds();
			    }
			</script>
			<header class="widget-header-dark with-btn">
				Jangan Lupa Ibadah !
			</header>
			<div class="widget-time-content">
				<div class="count-item">
					<div class="count-item-number"><p id="jam"></p></div>
					<div class="count-item-caption">Jam</div>
				</div>
				<div class="count-item divider">:</div>
				<div class="count-item">
					<div class="count-item-number"><p id="menit"></p></div>
					<div class="count-item-caption">Menit</div>
				</div>
				<div class="count-item divider">:</div>
				<div class="count-item">
					<div class="count-item-number"><p id="detik"></p></div>
					<div class="count-item-caption">Detik</div>
				</div>
			</div>
		</section>

		<div class="col-xs-6">
			<section class="widget widget-simple-sm-fill">
				<div class="widget-simple-sm-icon">
					<?php echo number_format( $row3->jml , 0 , ',' , '.' ); ?>
				</div>
				<div class="widget-simple-sm-fill-caption">Surat Masuk</div>
			</section>
		</div>

		<div class="col-xs-6">
			<section class="widget widget-simple-sm-fill green">
				<div class="widget-simple-sm-icon">
					<?php echo number_format( $row4->jml , 0 , ',' , '.' ); ?>
				</div>
				<div class="widget-simple-sm-fill-caption">Surat Keluar</div>
			</section>
		</div>
	</div><!--.col- -->

	
	<!-- <div class="col-lg-3 col-md-6 col-sm-6">
		<section class="box-typical">
			<header class="box-typical-header-sm" style="color:#08cc05">UPDATE INFO : </header>
			<div style="padding-left: 10px"><b>2018-05-12 13:25</b><br>Aplikasi Final KabKo v.0.1<br></div>
		</section><!--.box-typical-->
	</div><!--.col- --> -->
</div>