<?php 
    $uri1=$this->uri->segment(1);
    $uri2=$this->uri->segment(2);
    $uri12=$uri1.$uri2;
?>
<li class="blue-dirty with-sub <?php if($uri1=='kabko_suratmasuk') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon glyphicon glyphicon-download-alt"></i>
        <span class="lbl">Surat Masuk</span>
    </span>
    <ul>
        <li <?php if($uri12=='suratkemenag/kabko_suratmasukindex') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratmasuk/index"><span class="lbl">Rekam</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_suratmasukcarisemua') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratmasuk/carisemua"><span class="lbl">Cari</span></a></li>
        <!--<li <?php if($uri12=='suratkemenag/kabko_suratmasukrekap') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratmasuk/rekap"><span class="lbl">Rekap</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_suratmasukrekamlama') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratmasuk/rekamlama"><span class="lbl">Rekam Lama</span></a></li>-->
    </ul>
</li>

<li class="magenta with-sub <?php if($uri1=='suratkemenag/kabko_disposisi') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon glyphicon glyphicon-transfer"></i>
        <span class="lbl">Disposisi Surat</span>
    </span>
    <ul>
        <li <?php if($uri12=='suratkemenag/kabko_disposisiindex') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_disposisi/index"><span class="lbl">Disposisi</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_disposisidaftarsekre') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_disposisi/daftarsekre"><span class="lbl">Daftar</span></a></li>
    </ul>
</li>

<li class="green with-sub <?php if($uri1=='suratkemenag/kabko_suratkeluar') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon glyphicon glyphicon-send"></i>
        <span class="lbl">Surat Keluar</span>
    </span>
    <ul>
        <li <?php if($uri12=='suratkemenag/kabko_suratkeluarresponsekre') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratkeluar/responsekre"><span class="lbl">Respon</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_suratkeluardaftarsekre') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratkeluar/daftarsekre"><span class="lbl">Daftar</span></a></li>
        <li <?php if($uri12=='suratkemenag/kabko_suratkeluarrekap') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/kabko_suratkeluar/rekap"><span class="lbl">Rekap</span></a></li>
    </ul>
</li>

<li class="magenta with-sub <?php if($uri1=='chat') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon font-icon-comments"></i>
        <span class="lbl">Chat</span>
    </span>
    <ul>
        <li <?php if($uri12=='suratkemenag/chatroom') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>suratkemenag/chat/room"><span class="lbl">Room</span></a></li>
        <!--<li <?php if($uri12=='chatpersonal') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>chat/personal"><span class="lbl">Personal</span></a></li>-->
    </ul>
</li>
<li class="green <?php if($uri1=='suratkemenag/pengumuman') { echo 'menuaktif'; } ?>">
    <a href="<?php echo base_url(); ?>suratkemenag/pengumuman/">
        <span class="fa fa-bullhorn"></span>
        <span class="lbl">Pengumuman</span>
    </a>
</li>