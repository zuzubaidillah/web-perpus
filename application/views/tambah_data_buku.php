<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Edit Data Buku</h2>
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
								<?= form_open_multipart('menu/simpan_buku'); ?>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Kode Buku</label>
                  <div class="col-md-2 col-sm-6">
                    <input class="form-control" name="kode_buku" value="<?= mt_rand(10000000, 99999999) ?>" maxlength="8" readonly />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Buku<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="nama_buku" required="required" />
                  </div>
                </div><br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Foto</label>
                  <div class="col-md-5 col-sm-6">
                    <input type="file" name="foto"  />
                  </div>
                </div><br>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Pengarang<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="pengarang" required="required" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Penerbit<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="penerbit" required="required" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Tahun Terbit<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="tahun_terbit" required="required" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Tahun Pembelian<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="tahun_pembelian" required="required" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Penempatan<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="penempatan" required="required" />
                  </div>
                </div>
                <div class="field item form-group">
                  <label class="col-form-label col-md-3 col-sm-3  label-align">Jumlah<span class="required">*</span></label>
                  <div class="col-md-5 col-sm-6">
                    <input class="form-control" name="jumlah" required="required" />
                  </div>
                </div>
                <div class="ln_solid"><br>
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
    document.getElementById("m4").classList.add("active");
    document.getElementById("thead").innerHTML = "Data Buku | Web Perpus";
  </script>