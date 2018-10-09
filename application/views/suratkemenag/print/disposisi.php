<?php 
  $disposisi  = $this->db->query("select s.id,a.asal_surat,s.pengirim,s.nomor_surat,s.perihal,s.indeks_berkas,
s.tanggal_surat,s.tanggal_rekam,f.nama_sifat,s.lampiran,s.id_user, s.id_sifat
from t_suratmasuk s, ref_asalsurat a, ref_sifat f where s.id_asalsurat=a.id and s.id_sifat=f.id and s.id='".$this->uri->segment(3)."'")->row();
?>
<body  onload="window.print()">
<style type="text/css">
  table, td{
    border-collapse: collapse;
    border: 1px solid black;
    padding: 0px 5px 0px 10px;
    font-size: 10px;
  }
  .kotakcek {
    border: solid 1px #000000;
    width: 13px;
    height: 11px;
    display: inline-block;
    margin-right: 10px;
  }

  .kotakcekhitam {
    border: solid 1px #000000;
    width: 13px;
    height: 11px;
    display: inline-block;
    margin-right: 10px;
    background-color: #000000;
  }
  th {
    padding-left: 140px;
    background : url("<?php echo base_url(); ?>assets/theme/img/avatar-sign.png");
    background-size: 50px;
    background-repeat: no-repeat;
    background-position: 20px 5px;
    -webkit-print-color-adjust: exact;
    color-adjust: exact;
  }

    @media print {
      body {-webkit-print-color-adjust: exact;}
    }
    @page {
        size:A5 potrait;
        margin-left: 50px;
        margin-right: 0px;
        margin-top: 50px;
        margin-bottom: 0px;
        margin: 0;
        -webkit-print-color-adjust: exact;
    }
    .kopbesar { font-size: 10px; }
    .kopkecil { font-size: 8px; }
</style>
<table>
  <tr>
    <th colspan="3">
      <div class="kopbesar"><?php echo $this->config->item('nama_level_0'); ?><br>
      <?php echo $this->config->item('nama_level_1'); ?><br>
      <?php echo $this->config->item('nama_level_2'); ?></div><div class="kopkecil">
      <?php echo $this->config->item('alamat_1'); ?><br>
      <?php echo $this->config->item('alamat_2'); ?><br>
      <?php echo $this->config->item('alamat_3'); ?></div></th>
  </tr>
  <tr>
    <td colspan="3" align="center">LEMBAR DISPOSISI</td>
  </tr>
  <tr>
    <td colspan="3" align="center">PERHATIAN : Dilarang memisahkan sehelai surat pun yang digabung dalam berkas ini</td>
  </tr>
  <tr>
    <td width="180px">Nomor Surat : <?php echo $disposisi->nomor_surat; ?></td>
    <td colspan="2">Status : <div class="kotakcek"></div>Asli&nbsp;&nbsp;&nbsp;&nbsp; <div class="kotakcek"></div>Tembusan</td>
  </tr>
  <tr>
    <td style="vertical-align: top;">Tanggal Surat : <?php echo $disposisi->tanggal_surat; ?></td>
    <td colspan="2">Sifat &nbsp;&nbsp;: <div class="kotakcek"></div>Sangat Segera / Kilat<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($disposisi->id_sifat==3) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?>Segera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($disposisi->id_sifat==1) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?>Biasa</td>
  </tr>
  <tr>
    <td>Lampiran :<?php echo $disposisi->lampiran; ?></td>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td>Diterima Tanggal :<?php echo $disposisi->tanggal_rekam; ?></td>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td>No. Agenda :<?php echo $disposisi->id; ?></td>
    <td colspan="2">Sangat Rahasia&nbsp;&nbsp;<div class="kotakcek"></div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rahasia&nbsp;&nbsp;<?php if($disposisi->id_sifat==4) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Biasa&nbsp;&nbsp;<div class="kotakcek"></div></td>
  </tr>
  <tr>
    <td colspan="3" height="40px" style="vertical-align: top;">Dari : <?php echo $disposisi->pengirim; ?><br>Perihal : <?php echo $disposisi->perihal; ?><br></td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 50px;" rowspan="2"><u>Disposisi Kepala Kepada :</u></td>
    <td style="vertical-align: top; height: 50px;" rowspan="2" width="160px"><u>Petunjuk :</u></td>
    <td style="vertical-align: top;">Diteruskan Kepada :</td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 80px">
      1.<br><br>
      2.<br><br>3.</td>
  </tr>
  <!--<tr>
    <td><div class="kotakcek"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div class="kotakcek"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>-->
  <tr>
    <td colspan="3" style="vertical-align: top; height: 25px;">CATATAN :</td>
  </tr>
  <tr>
    <td>Tanggal Penyelesaian :</td>
    <td colspan="2">Diajukan Kembali tgl :</td>
  </tr>
  <tr>
    <td>Penerima :</td>
    <td>Penerima :</td>
    <td>Penerima :</td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 50px;"><u>DISPOSISI KASUBAG. TATA USAHA :</u></td>
    <td style="vertical-align: top; height: 50px;"><u>DISPOSISI KASI/PENYELENGGARA :</u></td>
    <td style="vertical-align: top; height: 50px;">Kepada JFU :<br></td>
  </tr>
  <tr>
    <td>Tanggal Penyelesaian :</td>
    <td>Tanggal Penyelesaian :</td>
    <td>Tanggal Penyelesaian :</td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 30px;">Penerima :</td>
    <td style="vertical-align: top; height: 30px;">Penerima :</td>
    <td style="vertical-align: top; height: 30px;">Penerima :</td>
  </tr>
</table>
</body>