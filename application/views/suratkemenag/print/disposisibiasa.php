<?php 
  $disposisi  = $this->db->query("select s.id,a.asal_surat,s.pengirim,s.nomor_surat,s.perihal,s.indeks_berkas,
s.tanggal_surat,s.tanggal_rekam,f.nama_sifat,s.lampiran,s.id_user, s.id_sifat
from t_suratmasuk s, ref_asalsurat a, ref_sifat f where s.id_asalsurat=a.id and s.id_sifat=f.id and s.id='".$this->uri->segment(5)."'")->row();
?>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {font-size: 14px}
.style3 {font-size: 9px}
-->
</style>
<body  onload="window.print()">
<style type="text/css">
  table, td{
    border-collapse: collapse;
    border: 1px solid black;
    padding: 0px 10px 0px 10px;
  }
  .kotakcek {
    border: solid 1px #000000;
    width: 13px;
    height: 11px;
    display: inline-block;
    margin-right: 10px;
  }
  th {
    padding-left: 140px;
    background : url("<?php echo base_url(); ?>assets/theme/img/avatar-sign.png");
    background-size: 50px;
    background-repeat: no-repeat;
    background-position: 20px 10px;
    -webkit-print-color-adjust: exact;
    color-adjust: exact;
  }

    @media print {
      body {-webkit-print-color-adjust: exact;}
    }
    @page {
        size:A5 lanscape;
        margin-left: 50px;
        margin-right: 0px;
        margin-top: 50px;
        margin-bottom: 0px;
        margin: 0;
        -webkit-print-color-adjust: exact;
    }
    .fontbesar { font-size: 12px; padding-right: 0px; }
    .fontsedang { font-size: 8px; height: 5px; padding-right: 0px; }
    .fontkanan { height: 12px; text-align: right; padding-right: 10px; }
    .kopbesar { font-size: 10px; }
    .kopkecil { font-size: 8px; }
</style>
<div class="fontsedang">

  <tr>
    <td>&nbsp;</td>
  </tr>

<table>
  <tr>
    <th colspan="5">
      <div class="kopbesar">KEMENTERIAN AGAMA REPUBLIK INDONESIA<br>
      KANTOR WILAYAH KEMENTERIAN AGAMA<br>
      PROVINSI JAWA TIMUR</div><div class="kopkecil">
      Jalan Raya Bandara Juanda No.26 Sidoarjo 61253<br>
      Telpon (031) 8686014 Faksimili (031) 8674123<br>
      Website : www.jatim.kemenag.go.id</div></th>
  </tr>
  <tr>
   <td colspan="5" ><center class="style2">LEMBAR PENGANTAR SURAT BIASA</center> </td>
  </tr>
  <tr valign="top">

    <td colspan="3"><p class="style1"><span class="style3">Ditunjukan
Kepada *</span></p>
      <span class="style1">UNIT PENGOLAH : ............................</span></br>    </td>
    <td colspan="2"><p class="style1">Jam: ............................ </p>
    <p class="style1">Tanggal : .............................................</p></td>
  </tr>
  <tr>
    <td width="5"><span class="style1">No</span></td>
    <td width="132"><div align="center"><span class="style1">Asal Surat </span></div></td>
    <td width="144"><div align="center"><span class="style1">Tanggal Nomor</span></div></td>
    <td width="130"><div align="center"><span class="style1">P e r i h a l</span></div></td>
    <td width="25"><div align="center"><span class="style1">No.Agenda</span></div></td>
  </tr>
  <tr valign="top" align="margin-left">
    <td height="200"><span class="style1"><br>1.</span></td>
    <td><span class="style1"><br><?php echo $disposisi->pengirim; ?></span></td>
    <td><p class="style1"><br><?php echo $disposisi->tanggal_surat; ?> /<?php echo $disposisi->nomor_surat; ?></p>    </td>
    <td><span class="style1"><br><?php echo $disposisi->perihal; ?></span></td>
    <td><p class="style1"><br><?php echo $disposisi->id; ?></p>    </td>
  </tr>
</table>

<p>
  <div class="fontbesar">
Diterima Jam : .....................................Tanggal ................... *) Coret yang tidak <br>
Tanda Tangan Penerima : .....................................................<br>
Nama Terang &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................................................<br>
</div>
</body>