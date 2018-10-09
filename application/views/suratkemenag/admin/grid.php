<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<div class="container-fluid">
	<?php 
	if($data['state'] == 'add')
	{
		echo "*** hanya diperbolehkan file rar saja. batas ukuran maksimum 30Mb.";
	}

	if(isset($_GET['d']))
	{
		echo "<font color='red'>Maaf Anda tidak diperkenankan mengakses halaman Download.</font>";
	}

	echo $output; ?>
</div><!--.container-fluid-->
