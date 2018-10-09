<?php $logged_in = $this->session->userdata('logged_in'); ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/separate/pages/chat.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/theme/css/separate/pages/messenger.min.css">
<style type="text/css">
  .admin-chat { background: #00a8ff !important; color: #fff !important; }
  .messenger .chat-area-in { margin-right: 0px; margin-left: 0px; }
  /*.chat-list-item.online { background: transparent; }*/
</style>

<div class="container-fluid messenger">

  <div class="box-typical chat-container">

      <section class="chat-list-info">
          <div class="chat-list-in">
          </div>
      </section>

      <section class="chat-area">
          <div class="chat-area-in">
              <div class="chat-area-header">
                  <center style="padding-top: 15px;"><h2>Chat Room</h2></center>
              </div><!--.chat-area-header-->

              <div class="chat-dialog-area scrollable-block">
                  <div class="messenger-dialog-area">

                      <?php foreach ($result->result() as $data) {  
                          if($data->username==$logged_in['username'])
                          {
                      ?>
                          <div class="messenger-message-container">
                              <div class="avatar">
                                <?php 
                                  if($data->foto==null) { 
                                     echo '<img src="'.base_url().'assets/theme/img/avatar-sign.png">';
                                  }
                                  else
                                  {
                                     echo '<img src="'.base_url().'file_foto/'.$data->foto.'">';
                                  }
                                ?>
                              </div>
                              <div class="messages">
                                  <ul>
                                      <li>
                                          <div class="message">
                                              <div class="admin-chat">
                                                  <?php echo $data->pesan; ?>. <b><?php echo $data->nama; ?></b> - <?php echo $data->date; ?>
                                              </div>
                                          </div>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                      <?php } else { ?>
                          <div class="messenger-message-container">
                              <div class="avatar">
                                <?php 
                                  if($data->foto==null) { 
                                     echo '<img src="'.base_url().'assets/theme/img/avatar-sign.png">';
                                  }
                                  else
                                  {
                                     echo '<img src="'.base_url().'file_foto/'.$data->foto.'">';
                                  }
                                ?>
                              </div>
                              <div class="messages">
                                  <ul>
                                      <li>
                                          <div class="message">
                                              <div class="user-chat">
                                                  <?php echo $data->pesan; ?>. <b><?php echo $data->nama; ?></b> - <?php echo $data->date; ?>
                                              </div>
                                          </div>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                      <?php } } ?>
                  </div>
              </div>

              <div class="chat-area-bottom">
                  <form action="<?php echo base_url(); ?>chat/room" method="post" class="write-message">
                    <div class="input-group">
                      <div class="form-group">
                        <div class="input-group" style="padding:10px 10px 10px ">
                          <input type="text" class="form-control" style="height: 50px;" name="pesan" id="pesan" placeholder="Enter untuk mengirim ...">
                          
                        </div>
                      </div>
                         <small class="text-muted" style="padding-left: 10px">Mohon diperhatihan dalam pemilhan kata karena web ini terbuka untuk umum. Terimakasih</small>
                    </div>
                  </form>
              </div><!--.chat-area-bottom-->
          </div><!--.chat-area-in-->
      </section><!--.chat-area-->
  </div><!--.chat-container-->

</div><!--.container-fluid-->