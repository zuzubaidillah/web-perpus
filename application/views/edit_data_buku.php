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
                                <?= form_open_multipart('menu/update_buku'); ?>
                                <input type="hidden" name="id_buku" value="<?= $buku->kode_buku; ?>">
                                <input type="hidden" name="foto_lama" value="<?= $buku->foto; ?>">
                                <div class="field item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3  label-align">Kode buku</label>
                                    <div class="col-md-2 col-sm-6">
                                        <img style="width:120px; height: 120px;" src="<?= base_url() ?>assets/images/qrcode/<?= $buku->kode_buku; ?>.png" alt="Avatar">
                                        <input class="form-control" name="kode_buku" value="<?= "$buku->kode_buku" ?>" readonly />
                                    </div>
                                </div>
                                <div class="field item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3  label-align">Nama Buku</label>
                                    <div class="col-md-5 col-sm-6">
                                        <input class="form-control" name="nama_buku" value="<?= $buku->judul; ?>" />
                                    </div>
                                </div><br>
                                <div class="field item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3  label-align">Foto</label>
                                    <div class="col-md-5 col-sm-6">
                                        <img style="width:120px; height: 120px;" src="<?= base_url() ?>assets/images/buku/<?= $buku->foto ?>">
                                        <br>
                                        <br>
                                        <input type="file" name="foto" />
                                    </div>
                                </div><br>
                                <div class="field item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3  label-align">Pengarang</label>
                                    <div class="col-md-5 col-sm-6">
                                        <input class="form-control" name="pengarang" value="<?= $buku->pengarang; ?>" />
                                    </div>
                                </div>
                                <div class="field item form-group">
                                    <label class="col-form-label col-md-3 col-sm-3  label-align">Penerbit</label>
                                    <div class="col-md-5 col-sm-6">
                                        <input class="form-control" name="penerbit" value="<?= $buku->penerbit; ?>" />
                                    </div>
                                </div>
                                <div class="ln_solid"><br>
                                    <div class="form-group">
                                        <div class="col-md-6 offset-md-6">
                                            <button type='reset' class="btn btn-primary"><i class="fa fa-chevron-circle-left"></i> Reset</button>
                                            <button type='submit' class="btn btn-success"><i class="fa fa-save"></i> Submit</button>
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