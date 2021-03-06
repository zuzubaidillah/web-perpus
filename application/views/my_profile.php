<?php 
$uname = $this->session->userdata('username');
$user =  $this->db->get_where('user', ['username' => $uname])->row_array();

?>
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12  ">
        <div class="x_panel">
          <div class="x_title">
            <h2>My Profile</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <div class="col-md-3 col-sm-3  profile_left">
              <div class="profile_img">
                <div id="crop-avatar">
                  <!-- Current avatar -->
                  <img class="img-responsive avatar-view" style="width: 200px; height: 200px;" src="<?=base_url('assets/images/profile/'). $user['foto'] ?>" alt="Avatar" title="foto">
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card-body">
                <p><font size="5" class="card-title"><?= $user['nama']; ?></font><p>
                  <p><font size="4" class="card-text ml-1"><?=$user['email']; ?></font></p>
                  <p><font size="2" class="card-text text-mute ml-1">
                    <?php if ($user['role_id']=='1') {
                      echo "Kepala Perpustakaan";
                    }else{
                      echo "Administrator";
                    }?>
                    
                  </font></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
        <!-- /page content -->