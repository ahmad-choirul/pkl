<?php 
$uri1=$this->uri->segment(1);
$uri2=$this->uri->segment(2);
$uri12=$uri1.$uri2;
?>
<li class="red with-sub <?php if($uri1=='kabko_admin') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon font-icon-cogwheel"></i>
        <span class="lbl">Menu Admin</span>
    </span>
    <ul>
        <li <?php if($uri12=='suratkemenag/kabko_adminusers') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/users"><span class="lbl">Users</span></a></li>
        <li <?php if($uri12=='ksuratkemenag/abko_adminrules') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/rules"><span class="lbl">Rule User</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminkode') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/kode"><span class="lbl">Master Kode</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminpegawai') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/pegawai"><span class="lbl">Data Pegawai</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminasal') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/asal"><span class="lbl">Referensi Asal</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminsifat') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/sifat"><span class="lbl">Referensi Sifat</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminseksi') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/seksi"><span class="lbl">Referensi Seksi</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminjabatan') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/jabatan"><span class="lbl">Referensi Jabatan</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_admin/ppk') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/ppk"><span class="lbl">Referensi PPK</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_adminpengumuman') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_admin/pengumuman"><span class="lbl">Pengumuman</span></a></li>
    </ul>
</li>

<li class="magenta with-sub <?php if($uri1=='chat') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon font-icon-comments"></i>
        <span class="lbl">Chat</span>
    </span>
    <ul>
        <li <?php if($uri12=='chatroom') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/chat/room"><span class="lbl">Room</span></a></li>
        <!--<li <?php if($uri12=='chatpersonal') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>chat/personal"><span class="lbl">Personal</span></a></li>-->
    </ul>
</li>
<li class="green <?php if($uri1=='suratkemenag/pengumuman') { echo 'menuaktif'; } ?>">
    <a href="<?php echo base_url(); ?>suratkemenag/pengumuman/">
        <span class="fa fa-bullhorn"></span>
        <span class="lbl">Pengumuman</span>
    </a>
</li>