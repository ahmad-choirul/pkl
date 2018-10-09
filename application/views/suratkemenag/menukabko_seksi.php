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
        <li <?php if($uri12=='kabko_suratmasukcari') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>kabko_suratmasuk/cari"><span class="lbl">Cari</span></a></li>
    </ul>
</li>

<li class="green with-sub <?php if($uri1=='kabko_suratkeluar') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon glyphicon glyphicon-send"></i>
        <span class="lbl">Surat Keluar</span>
    </span>
    <ul>
        <li <?php if($uri12=='kabko_suratkeluarcari') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>kabko_suratkeluar/cari"><span class="lbl">Cari</span></a></li>
    </ul>
</li>

<li class="magenta with-sub <?php if($uri1=='kabko_disposisi') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon glyphicon glyphicon-transfer"></i>
        <span class="lbl">Disposisi Surat</span>
    </span>
    <ul>
        <li <?php if($uri12=='kabko_disposisieselon4') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>kabko_disposisi/eselon4"><span class="lbl">Disposisi Kasi</span></a></li>
        <li <?php if($uri12=='kabko_disposisidaftareselon4') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>kabko_disposisi/daftareselon4"><span class="lbl">Daftar Kasi</span></a></li>
    </ul>
</li>

<li class="magenta with-sub <?php if($uri1=='chat') { echo 'opened'; } ?>">
    <span>
        <i class="font-icon font-icon-comments"></i>
        <span class="lbl">Chat</span>
    </span>
    <ul>
        <li <?php if($uri12=='chatroom') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>chat/room"><span class="lbl">Room</span></a></li>
        <!--<li <?php if($uri12=='chatpersonal') { echo 'class="menuaktif"'; } ?>><a href="<?php echo base_url(); ?>chat/personal"><span class="lbl">Personal</span></a></li>-->
    </ul>
</li>
<li class="green <?php if($uri1=='pengumuman') { echo 'menuaktif'; } ?>">
    <a href="<?php echo base_url(); ?>pengumuman/">
        <span class="fa fa-bullhorn"></span>
        <span class="lbl">Pengumuman</span>
    </a>
</li>