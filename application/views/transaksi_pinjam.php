<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="row">
            <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Transaksi Peminjaman</h2>
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
                                <?php
                                if ($cektransaksi == true) {
                                ?>
                                    <table width="100%" border="1">
                                        <tr>
                                            <td width="20%"><label for="">Kode Transaksi</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkode_transaksi" value="<?=$kode_transaksi;?>"></td>
                                            <td width="20%"><label for="">Tanggal Pinjam</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_peminjaman" value="<?=$tgl_pengembalian;?>"></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Siswa</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtsiswa" value="<?=$kode_transaksi;?>"></td>
                                            <td width="20%"><label for="">Tanggal Pengembalian</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_pengembalian" value="<?=$tgl_pengembalian;?>"></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Kelas</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkelas" value="<?=$kelas;?>"></td>
                                            <td width="20%"><label for="">????</label></td>
                                            <td width="30%"></td>
                                        </tr>
                                    </table>
                                <?php } else { ?>
                                    <table width="100%" border="1">
                                        <tr>
                                            <td width="20%"><label for="">Kode Transaksi</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkode_transaksi" value="<?=$kode_transaksi;?>" disabled></td>
                                            <td width="20%"><label for="">Tanggal Pinjam</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_peminjaman" value="<?=$tgl_peminjaman;?>" disabled></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Siswa</label></td>
                                            <td width="30%">
                                                <select onchange="clicksiswa()" name="txtsiswa" id="txtsiswa" class="form-control">
                                                    <option value="kosong">Pilih Siswa</option>
                                                    <?php
                                                    if ($dtsiswa !== 0) {
                                                        foreach ($dtsiswa as $k) {
                                                            $id_siswa = $k->id_siswa;
                                                            $nama_siswa = $k->nama_siswa;
                                                    ?>
                                                            <option value="<?= $id_siswa; ?>"><?= $nama_siswa; ?></option>
                                                    <?php }
                                                    } ?>
                                                </select>
                                            </td>
                                            <td width="20%"><label for="">Tanggal Pengembalian</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_pengembalian" value="<?=$tgl_pengembalian;?>" disabled></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Kelas</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkelas" disabled></td>
                                            <td width="20%"><label for="">????</label></td>
                                            <td width="30%"></td>
                                        </tr>
                                    </table>
                                <?php } ?>
                                <a href="#" onclick="clicktambahbuku()" class="btn btn-success"><i class="fa fa-fw fa-plus-square"></i> Tambah Buku</a>
                                <div class="card-box table-responsive">
                                    <table id="tabel_peminjaman_detail" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Kode Peminjaman</th>
                                                <th>Judul</th>
                                                <th>Penerbit</th>
                                                <th>Pengarang</th>
                                                <th>Jenis</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function clicksiswa() {
                var id_siswa = $('#txtsiswa').val();
                console.log();

                $.ajax({
                    url: "<?= base_url('menu/carisiswasesuaiidsiswa'); ?>",
                    type: "post",
                    data: {
                        id_siswa: id_siswa
                    },
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        console.log(data);
                        $('#txtkelas').val(data[0].kelas);
                    },
                    error: function(jqxhr, status, err) {
                        console.log(jqxhr)
                        alert('Koneksi Lambat. clicksiswa')
                        window.location = ''
                    }
                });
            }
        </script>