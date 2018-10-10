<?php 
    $uri1=$this->uri->segment(1);
    $uri2=$this->uri->segment(2);
    $uri12=$uri1.$uri2;
?>
<style>
.menuaktif { background-color: #ecf2f5; }
.tableinfo { margin: 10px 0px 0px 0px; }
.tableinfo td { padding-left: 20px; }
</style>

<?php 
    $logged_in = $this->session->userdata('logged_in'); 
	$q = "SELECT * FROM users_rules where id=".$logged_in['id_rules']." LIMIT 1;";

	$query = $this->db->query($q);
	$row = $query->row(0);
?>
	<nav class="side-menu">
		<?php
		/*
	    <div class="side-menu-avatar">
	        <div class="avatar-preview avatar-preview-128">
	            <img src="<?php echo base_url(); ?>assets/theme/img/logo.png" alt="">
	        </div>
	    </div>
		*/
		?>
	    <div class="side-menu-avatar">
	        <div class="avatar-preview avatar-preview-64">
	        	<?php if ($logged_in['foto']==null) { ?>
	            	<img src="<?php echo base_url(); ?>assets/theme/img/logo.png" alt="" style="-webkit-border-radius: 0% !important; border-radius: 0% !important; ">
	            <?php } else  { ?>
	            	<img src="<?php echo base_url(); ?>file_foto/<?php echo $logged_in['foto']; ?>">
	            <?php } ?>
	        </div>
	        <table class="tableinfo">
		        <tr style="color: yellow;"><td><i class="fa fa-user"></i></td><td><?php echo  $logged_in['name']; ?></td></tr>
		        <tr style="color: green;"><td><i class="fa fa-cog"></i></td><td><?php echo $row->rules; ?></td></tr>
			</table>

	    </div>

	    <ul class="side-menu-list">
	        <li class="blue <?php if($uri12=='suratkemenag/dashboard') { echo 'menuaktif'; } ?>">
	            <a href="<?php echo base_url(); ?>suratkemenag/dashboard">
	            <span>
	                <i class="fa fa-dashboard"></i>
	                <span class="lbl">Dashboard</span>
	            </span>
	            </a>
	        </li>
	        <?php 
	        	if ($logged_in['id_rules']==1) { $this->load->view('suratkemenag/menu_admin'); } //admin
	        	if ($logged_in['id_rules']==7) { $this->load->view('suratkemenag/menu_pengguna'); } //pengguna
	        	if ($logged_in['id_rules']==3) { $this->load->view('suratkemenag/menu_bo'); } //bo
	        	if ($logged_in['id_rules']==2) { $this->load->view('suratkemenag/menu_fo'); } //fo
	        	if ($logged_in['id_rules']==5) { $this->load->view('suratkemenag/menu_sekkab'); } //sekkabang
	        	if ($logged_in['id_rules']==4) { $this->load->view('suratkemenag/menu_sekwil'); } //sekwil
	        	if ($logged_in['id_rules']==6) { $this->load->view('suratkemenag/menu_sekbid'); } //sekbid
	        	if ($logged_in['id_rules']==8) { $this->load->view('suratkemenag/menu_seksi'); } //sekseksi
	        	if ($logged_in['id_rules']==1001) { $this->load->view('suratkemenag/menukabko_admin'); } //admin kabko
	        	if ($logged_in['id_rules']==1002) { $this->load->view('suratkemenag/menukabko_sekre'); } //sekre kabko
	        	if ($logged_in['id_rules']==1003) { $this->load->view('suratkemenag/menukabko_seksi'); } //seksi kabko
	        	if ($logged_in['id_rules']==1004) { $this->load->view('suratkemenag/menukabko_pengguna'); } //pengguna kabko
	        ?>
	    </ul>

	</nav><!--.side-menu-->


