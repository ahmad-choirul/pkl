
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>

<div class="container-fluid">
	<?php echo $output; ?>
</div><!--.container-fluid-->

<?php 


if($data['state']=='add') { ?>
<script>
	/*$(function(){ alert('<?php echo $data['state']; ?>'); });*/
	$("#field-id_asalsurat").change(function(){
		val=$(this).val();
		url="<?php echo base_url(); ?>suratkeluar/index/add/"+val;
		$.ajax({
			'success':function(response){
				window.location = url; // redirect 
			}
		});
	});
	
	var getval="<?php echo $this->uri->segment(5); ?>"
	//alert(getval);
	$('#field-id_tujuansurat').val(getval);
	/*$( "#field-id_jenissurat" ).change(function() {
	  $('#field-nomor_surat').prop('readonly',true);
	  if(this.value>4)
	  {
	  		$('#field-nomor_surat').attr('type','text');
	  		$('#field-nomor_surat').val('1111');
	  }
	  else
	  {
	  		$('#field-nomor_surat').attr('type','hidden');
	  		$('#field-nomor_surat').val();
	  }
	});*/
</script>
<?php } ?>