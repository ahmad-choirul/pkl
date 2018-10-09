<div class="box-typical box-typical-padding">

	<h5 class="m-t-lg with-border">Rekap Harian</h5>

	<form action="" method="post" target="_blank">
		<div class="form-group row">
			<label class="col-sm-2 form-control-label">Tanggal Rekam</label>
			<div class="col-sm-10">
				<p class="form-control-static"><input type="text" class="form-control" id="tanggal_rekam" name="tanggal_rekam" placeholder="YYYY-MM-DD"></p>
			</div>
		</div>
		<div class="form-group row">
			<label for="exampleSelect" class="col-sm-2 form-control-label">FO</label>
			<div class="col-sm-10">
				<select id="id_fow" name="id_fo" class="form-control">
					<?php
						$query = $this->db->query("select * from users where status=1 and id_rules=2");

						foreach ($query->result() as $row)
						{
						        echo "<option value='".$row->id."'>".$row->name."</option>";
						}
					?>
				</select>
			</div>
		</div>
		<input type="submit" class="btn btn-large">
	</form>

</div>