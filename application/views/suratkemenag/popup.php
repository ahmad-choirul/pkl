 	<script type="text/javascript">
	    $(window).on('load',function(){
	        $('#myModal').modal('show');
	    });
	</script>
	
 	<?php
      $query1 = $this->db->query("select * from pengumuman ORDER BY date DESC limit 5");
    ?>
	<div class="modal fade"
		 id="myModal"
		 tabindex="-1"
		 role="dialog"
		 aria-labelledby="myModalLabel"
		 aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width: 750px;">
				<div class="modal-header">
					<button type="button" class="modal-close" data-dismiss="modal" aria-label="Close">
						<i class="font-icon-close-2"></i>
					</button>
					<h4 class="modal-title" id="myModalLabel">Selamat Datang</h4>
				</div>
				<div class="modal-body">
					<table id="example1" class="table table-bordered table-striped table-hover">
		                <thead>
		                <tr>
		                  <th>Perihal</th>
		                  <th>Tanggal</th>
		                  <th>Proses</th>
		                </tr>
		                </thead>
		                <tbody>
		                  <?php foreach ($query1->result() as $data) { 
		                    echo "<tr>";
		                    echo "<td nowrap>".$data->perihal."</td>";
		                    echo "<td nowrap>".$data->date."</td>";
		                    echo '<td nowrap>
		                      <a href="'.$data->file_pengumuman.'">
		                        <button type="button" class="btn btn-success btn-xs">download</button>
		                      </a>';
		                    echo '</td>';
		                    echo "</tr>";
		                  } ?>
		                </tbody>
		              </table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-rounded btn-default" data-dismiss="modal">Close</button>
					<button onclick="location.href='<?php echo base_url(); ?>pengumuman';"  type="button" class="btn btn-rounded btn-primary">Lihat Pengumuman Lengkap</button>
				</div>
			</div>
		</div>
	</div>