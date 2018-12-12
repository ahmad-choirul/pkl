
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
<!-- menu dropdown asal surat -->
<?php 
/*
if($data['state']=='add') { ?>
<script>
  $("#field-id_asalsurat").change(function(){
    val=$(this).val();
    url="<?php echo base_url(); ?>suratmasuk/index/add/"+val;
    $.ajax({
      'success':function(response){
        window.location = url; // redirect 
      }
    });
  });
  
  var getval="<?php echo $this->uri->segment(4); ?>"
  //alert(getval);
  $('#field-id_asalsurat').val(getval);
</script>

<?php } 
*/
?>