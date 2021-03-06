<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Edit Data Admin</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="row">
							<div class="col-sm-12">
								<?= form_open_multipart('menu/update_admin'); ?>
                <input type="hidden" name="id" value="<?=$admin->id; ?>">
                <input type="hidden" name="foto_lama" value="<?=$admin->foto; ?>">
                <input type="hidden" name="pw_lama" value="<?=$admin->password; ?>">
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Nama</label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="nama" siswa  value="<?= $admin->nama; ?>" />
                  </div>
                </div>
                <br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Foto</label>
                  <div class="col-md-5 col-sm-6">
                    <img style="width:120px; height: 120px;" src="<?=base_url() ?>assets/images/profile/<?=$admin->foto ?> ?>">
                    <br>
                    <br>
                    <input type="file" name="foto" />
                  </div>
                </div><br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Username</label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="username"  value="<?= $admin->username; ?>" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Email</label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="email"  value="<?= $admin->email; ?>" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Password</label>
                  <div class="col-md-5 col-sm-6">
                    <div class="input-group mb-3">
                      <input class="form-control" id="pw" type="password" name="password"  value="<?= base64_decode($admin->password) ?>" />
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <input type="checkbox" onclick="showPw()">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Status Admin</label>
                  <div class="col-md-5 col-sm-6">
                    <input type="checkbox" name="status" class="js-switch"
                    <?php if ($admin->status == '1') {
                      echo "checked";}?> />
                    </div>
                  </div>
                  <div class="ln_solid">
                    <br>
                    <div class="form-group">
                     <div class="col-md-6 offset-md-6">
                       <button type='reset' class="btn btn-primary"><i class="fa fa-chevron-circle-left"></i> Reset</button>
                       <button type='submit' class="btn btn-success"><i class="fa fa-save"></i>  Submit</button>
                     </div>
                   </div>
                 </div>
                 <?= form_close(); ?>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
     <br>
     <br>
     <br>
     <script>
      document.getElementById("m5").classList.add("active");
      document.getElementById("thead").innerHTML = "Data Admin | Web Perpus";

      function showPw() {
        var x = document.getElementById("pw");
        if (x.type === "password") {
          x.type = "text";
        } else {
          x.type = "password";
        }
      }
    </script>