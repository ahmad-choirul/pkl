<?php 
  $disposisi  = $this->db->query("select s.id,a.asal_surat,s.pengirim,s.nomor_surat,s.perihal,s.indeks_berkas,
s.tanggal_surat,s.tanggal_rekam,f.nama_sifat,s.lampiran,s.id_user, s.id_sifat
from t_suratmasuk s, ref_asalsurat a, ref_sifat f where s.id_asalsurat=a.id and s.id_sifat=f.id and s.id='".$this->uri->segment(5)."'")->row();
?>
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
   <td colspan="5" ><center>LEMBAR PENGANTAR SURAT BIASA</center> </td>
   
  </tr>

  <tr>

    <td colspan="3">UNIT PENGOLAH : .................................</td>
    <td colspan="2">Disampaikan : .......... Tanggal ..............</td>
  </tr>
  <tr>
    
    <td>No<br>Urut</td>
    <td>Asal Surat / ditunjukan<br>Kepada *)</td>
    <td>Tanggal Nomor</td>
    <td>P e r i h a l</td>
    <td>Keterangan</td>
  </tr>
  <tr>
    <td>1.</td>
    <td><?php echo $disposisi->pengirim; ?></td>
    <td><?php echo $disposisi->tanggal_surat; ?> / <?php echo $disposisi->nomor_surat; ?></td>
    <td><?php echo $disposisi->perihal; ?></td>
    <td>Nomor Agenda : <?php echo $disposisi->id; ?></td>
    <br><br>
  </tr>
  
 
</table>

<p>
  <div class="fontbesar">
Diterima Jam : .....................................Tanggal ................... *) Coret yang tidak <br>
Tanda Tangan Penerima : .....................................................<br>
Nama Terang &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: .....................................................<br>
</div>
</body>