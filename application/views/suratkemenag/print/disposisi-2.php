<?php 
  $disposisi  = $this->db->query("select s.id,a.asal_surat,s.pengirim,s.nomor_surat,s.perihal,s.indeks_berkas,
s.tanggal_surat,s.tanggal_rekam,f.nama_sifat,s.lampiran,s.id_user, s.id_sifat
from t_suratmasuk s, ref_asalsurat a, ref_sifat f where s.id_asalsurat=a.id and s.id_sifat=f.id and s.id='".$this->uri->segment(5)."'")->row();
?>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {font-size: 10px}
.style4 {font-size: 16px}
.style5 {font-size: 10}
-->
</style>
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
      <div class="kopbesar style1"><span class="style1">KEMENTERIAN AGAMA REPUBLIK INDONESIA</span><br>
        <span class="style1">KANTOR WILAYAH KEMENTERIAN AGAMA</span><br>
        <span class="style1">PROVINSI JAWA TIMUR</span></div>
      <div class="kopkecil style2">
      Jalan Raya Bandara Juanda No.26 Sidoarjo 61253<br>
      Telpon (031) 8686014 Faksimili (031) 8674123<br>
    Website : www.jatim.kemenag.go.id</div></th>
  </tr>
  <tr>
    <td colspan="3" align="center"><span class="style4">LEMBAR DISPOSISI</span></td>
  </tr>
  <tr>
    <td colspan="3" align="center"><span class="style1">PERHATIAN : Dilarang memisahkan sehelai surat pun yang digabung dalam berkas ini</span></td>
  </tr>
  <tr>
    <td width="180px"><span class="style5">Nomor Surat : <?php echo $disposisi->nomor_surat; ?></span></td>
    <td colspan="2"><span class="style5">Status : </span>
      <div class="kotakcek style5"></div>
      <span class="style5">Asli&nbsp;&nbsp;&nbsp;&nbsp; </span>
      <div class="kotakcek style5"></div>
    <span class="style5">Tembusan</span></td>
  </tr>
  <tr>
    <td style="vertical-align: top;"><span class="style5">Tanggal Surat : <?php echo $disposisi->tanggal_surat; ?></span></td>
    <td colspan="2"><span class="style5">Sifat &nbsp;&nbsp;: </span>
      <div class="kotakcek style5"></div>
      <span class="style5">Sangat Segera / Kilat<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <?php if($disposisi->id_sifat==3) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?>
      Segera &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <?php if($disposisi->id_sifat==1) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?>
    Biasa</span></td>
  </tr>
  <tr>
    <td><span class="style5">Lampiran :<?php echo $disposisi->lampiran; ?></span></td>
    <td colspan="2"><span class="style5"></span></td>
  </tr>
  <tr>
    <td><span class="style5">Diterima Tanggal :<?php echo $disposisi->tanggal_rekam; ?></span></td>
    <td colspan="2"><span class="style5"></span></td>
  </tr>
  <tr>
    <td><span class="style5">No. Agenda :<?php echo $disposisi->id; ?></span></td>
    <td colspan="2"><span class="style5">Sangat Rahasia&nbsp;&nbsp;</span>
      <div class="kotakcek style5"></div> 
      <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rahasia&nbsp;&nbsp;
      <?php if($disposisi->id_sifat==4) { echo '<div class="kotakcekhitam"></div>'; } else { echo '<div class="kotakcek"></div>'; } ?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Biasa&nbsp;&nbsp;</span>      <div class="kotakcek style5"></div></td>
  </tr>
  <tr>
    <td colspan="3" height="40px" style="vertical-align: top;"><span class="style5">Dari : <?php echo $disposisi->pengirim; ?><br>
      Perihal : <?php echo $disposisi->perihal; ?><br>
    </span></td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 50px;" rowspan="2"><u><span class="style5">Disposisi Kepala Kepada :</span></u></td>
    <td style="vertical-align: top; height: 50px;" rowspan="2" width="160px"><u><span class="style5">Petunjuk :</span></u></td>
    <td style="vertical-align: top;"><span class="style5">Diteruskan Kepada :</span></td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 80px"><span class="style5">
      1.<br>
      <br>
      2.<br>
      <br>
      3.</span></td>
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
    <td colspan="3" style="vertical-align: top; height: 25px;"><span class="style5">CATATAN :</span></td>
  </tr>
  <tr>
    <td><span class="style5">Tanggal Penyelesaian :</span></td>
    <td colspan="2"><span class="style5">Diajukan Kembali tgl :</span></td>
  </tr>
  <tr>
    <td><span class="style5">Penerima :</span></td>
    <td><span class="style5">Penerima :</span></td>
    <td><span class="style5">Penerima :</span></td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 50px;"><u><span class="style5">DISPOSISI KABAG. TATA USAHA :</span></u></td>
    <td style="vertical-align: top; height: 50px;"><u><span class="style5">DISPOSISI KABID/PEMBIMAS :</span></u></td>
    <td style="vertical-align: top; height: 50px;"><span class="style5"><u>DISPOSISI KASI/KASUBAG :</u><br>
      Kepada JFU :<br>
    </span></td>
  </tr>
  <tr>
    <td><span class="style5">Tanggal Penyelesaian :</span></td>
    <td><span class="style5">Tanggal Penyelesaian :</span></td>
    <td><span class="style5">Tanggal Penyelesaian :</span></td>
  </tr>
  <tr>
    <td style="vertical-align: top; height: 30px;"><span class="style5">Penerima :</span></td>
    <td style="vertical-align: top; height: 30px;"><span class="style5">Penerima :</span></td>
    <td style="vertical-align: top; height: 30px;"><span class="style5">Penerima :</span></td>
  </tr>
</table>
</body>