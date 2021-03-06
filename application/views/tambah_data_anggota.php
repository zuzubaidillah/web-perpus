<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Edit Data Angota</h2>
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
								<?= form_open_multipart('menu/simpan_anggota'); ?>

                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Siswa<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="nama_siswa" siswa  required="required" />
                  </div>
                </div>
                <br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Foto</label>
                  <div class="col-md-5 col-sm-6">
                    <input type="file" name="foto" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">TTL<span class="required">*</span></label>
                  <div class="col-md-3 col-sm-6">
                    <input class="form-control" name="tempat_lahir"   required="required" />
                  </div>
                  <div class="col-md-2 col-sm-6">
                    <div class="form-group">
                      <div class='input-group date' id='myDatepicker2'>
                        <input type='text' name="tanggal_lahir" class="form-control" />
                        <span class="input-group-addon">
                         <span class="fa fa-calendar m-1"></span>
                       </span>
                     </div>
                   </div>
                 </div>   
               </div>
               <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">NIS<span class="required">*</span></label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="nis"  required="required" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">NISN<span class="required">*</span></label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="nisn"  data-inputmask="'mask': '9999999999'" required="required" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">Kelas<span class="required">*</span></label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="kelas"   required="required" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">Alamat<span class="required">*</span></label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="alamat"  required="required" />
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
  document.getElementById("m3").classList.add("active");
  document.getElementById("thead").innerHTML = "Data Anggota | Web Perpus";
</script>