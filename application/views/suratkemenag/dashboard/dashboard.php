<style type="text/css">

	.statistic-box .number {
	  padding: 20px 0 0 !important;
	}
	.statistic-box .caption {
	  min-height: 60px !important;
	}
</style>

<div class="row">
    <div class="col-sm-3">
        <article class="statistic-box purple">
            <div>
            	<?php
            	//$query1 = $this->db->query("SELECT COUNT(1) jumlah FROM surat_masuk;");
				//$row1 = $query1->row(0);
				?>
                <div class="number"><?php //echo $row1->jumlah; ?> </div>
                <div class="caption"><div>Total Surat Masuk</div></div>
            </div>
        </article>
    </div><!--.col-->
    <div class="col-sm-3">
        <article class="statistic-box yellow">
            <div>
            	<?php
            	//$query2 = $this->db->query("SELECT COUNT(1) jumlah FROM surat_masuk WHERE disposisi!='0';");
				//$row2 = $query2->row(0);
				?>
                <div class="number"><?php //echo $row2->jumlah; ?> </div>
                <div class="caption"><div>Telah Didisposisi</div></div>
            </div>
        </article>
    </div><!--.col-->
    <div class="col-sm-3">
        <article class="statistic-box red">
            <div>
            	<?php
                /*
            	$query3 = $this->db->query("SELECT COUNT(1) jumlah FROM surat_masuk WHERE disposisi='0';");
				$row3 = $query3->row(0);
				*/
                ?>
                <div class="number"><?php //echo $row3->jumlah; ?> </div>
                <div class="caption"><div>Belum Didisposisi</div></div>
            </div>
        </article>
    </div><!--.col-->

</div>

<div class="row">
    <div class="col-sm-6">

    <table id="table-edit" class="table table-bordered table-hover">
        <thead>
            <th>ID</th>
            <th>Nama</th>
            <th>Jumlah</th>
        </thead>
        <tbody>
        <?php
        /*
            $query = $this->db->query("select users.id, users.name, count(1) jumlah  from surat_masuk, users where surat_masuk.disposisi=users.id group by users.id, users.name;");

            foreach ($query->result() as $row)
            {
                    echo "<tr><td>".$row->id."</td><td>".$row->name."</td><td>".$row->jumlah."</td></tr>";
            }
        */
        ?>
        </tbody>
    </table>

    </div>
</div>
