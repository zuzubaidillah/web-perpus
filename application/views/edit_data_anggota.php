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
								<?= form_open_multipart('menu/update_anggota'); ?>
                <input type="hidden" name="id_siswa" value="<?=$siswa->id_siswa; ?>">
                <input type="hidden" name="foto_lama" value="<?=$siswa->foto; ?>">
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Siswa</label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="nama_siswa" value="<?= $siswa->nama_siswa ?>" />
                  </div>
                </div>
                <br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Foto</label>
                  <div class="col-md-5 col-sm-6">
                    <img style="width:120px; height: 120px;" src="<?=base_url() ?>assets/images/anggota/<?=$siswa->foto ?> ?>">
                    <br>
                    <br>
                    <input type="file" name="foto" />
                  </div>
                </div><br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">TTL</label>
                  <div class="col-md-3 col-sm-6">
                    <input class="form-control" name="tempat_lahir" value="<?= $siswa->tempat_lahir?>"  />
                  </div>
                  <div class="col-md-2 col-sm-6">
                    <div class="form-group">
                      <div class='input-group date' id='myDatepicker2'>
                        <input type='text' class="form-control" name="tanggal_lahir" value="<?= date('m d Y', $siswa->tanggal_lahir) ?>" />
                        <span class="input-group-addon">
                         <span class="fa fa-calendar m-1"></span>
                       </span>
                     </div>
                   </div>
                 </div>   
               </div>
               <input type="hidden" name="id_siswa" value="<?= $siswa->id_siswa; ?>">
               <input type="hidden" name="foto_lama" value="<?= $siswa->foto; ?>"> 
               <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">NIS</label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="nis" value="<?= $siswa->nis ?>" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">NISN</label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="nisn" value="<?= $siswa->nisn ?>" data-inputmask="'mask': '9999999999'" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">Kelas</label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="kelas" value="<?= $siswa->kelas ?>" />
                </div>
              </div>
              <div class="field item form-group">
                <label class="col-form-label col-md-3 col-sm-3  label-align">Alamat</label>
                <div class="col-md-5 col-sm-6">
                  <input class="form-control" name="alamat" value="<?= $siswa->alamat ?>" />
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