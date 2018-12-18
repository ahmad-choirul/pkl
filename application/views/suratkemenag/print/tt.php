<?php 
	$disposisi	= $this->db->query("select s.id,a.asal_surat,s.pengirim,s.nomor_surat,s.perihal,s.indeks_berkas,
s.tanggal_surat,s.tanggal_rekam,f.nama_sifat,s.lampiran,s.id_user 
from t_suratmasuk s, ref_asalsurat a, ref_sifat f where s.id_asalsurat=a.id and s.id_sifat=f.id and s.id='".$this->uri->segment(5)."'")->row();
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body  onload="window.print()">
<table width="100%" cellpadding="0" cellspacing="0" border="1">
<tr align="center">
	<td width="20%"><a href="javascript:history.go(-1)"><img src="<?php echo base_url(); ?>assets/theme/img/avatar-sign.png" height=100 width=110></a></td>
	<td width="80%">
		<table width="100%">
		<TR>
			<td align="center">
				<font size="+1">
					<strong>
						<?php echo $this->config->item('nama_level_0'); ?><BR>
						<?php echo $this->config->item('nama_level_1'); ?><BR>
						<?php echo $this->config->item('nama_level_2'); ?>
					</strong>
				</font>
			</td>
		</TR>
		<tr>
			<td>
			<table width="100%">
				<tr>
					<td width="45%" align="center">
						<font size="-1">
						<?php echo $this->config->item('alamat_1'); ?><br>
						<?php echo $this->config->item('alamat_2'); ?><br>
						<?php echo $this->config->item('alamat_3'); ?><br>
						<?php echo $this->config->item('alamat_4'); ?>
						</font>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		</table>
	</td>
</tr>	
<tr>
	<td align="center" colspan="2"><font size="+1">TANDA TERIMA SURAT MASUK</font></td>
</tr>
<tr>
	<td colspan="2">
		<table width="100%">
		<tr>
			<td>Tanggal Penerimaan Surat : <?php echo $disposisi->tanggal_rekam; ?></td>
			<td>No.ID : <?php echo $disposisi->id; ?></td>
			<td></td>
			<td></td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td colspan="2">
		<table width="100%">
		<tr>
			<td valign="top" width="17%">No./Tgl. Surat</td>
			<td valign="top" width="3%">:</td>
			<td width="80%"><?php echo $disposisi->nomor_surat; ?> / <?php echo $disposisi->tanggal_surat; ?></td>
		</tr>
		<tr>
			<td>Dari</td>
			<td>:</td>
			<td><?php echo $disposisi->pengirim; ?></td>
		</tr>
		<tr>
			<td>Perihal</td>
			<td>:</td>
			<td><?php echo $disposisi->perihal; ?></td>
		</tr>
		<tr>
			<td>Lampiran</td>
			<td>:</td>
			<td><?php echo $disposisi->lampiran; ?></td>
		</tr>
		<tr>
			<td>Sifat</td>
			<td>:</td>
			<td><?php echo $disposisi->nama_sifat; ?></td>
		</tr>
		</table>
	</td>
</tr>
<TR>
	<td colspan="2">
		<table width="100%">
		<tr>
			<td width="60%"></td>
			<td width="40%">Sidoarjo, <?php echo $disposisi->tanggal_rekam; ?></td>
		</tr>
		<tr>
			<td height="70"><br><br></td>
		</tr>
		<tr>
			<td></td>
			<td><?php  
                $login = $this->session->userdata('logged_in');
            	echo $login['name'];
        		?></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		</table>
	</td>
</TR>
</table>

</body>
</html>
