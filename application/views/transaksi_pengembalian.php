<script src="<?= base_url(); ?>assets/js/instascan.min.js"></script>

<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="row">
            <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Transaksi Pengembalian</h2>
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
                                            <td width="30%"><input type="text" class="form-control" id="txtkode_transaksi" value="<?= $kode_transaksi; ?>" disabled></td>
                                            <td width="20%"><label for="">Tanggal Pinjam</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_peminjaman" value="<?= $tgl_peminjaman; ?>" disabled></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Siswa</label></td>
                                            <td width="30%">
                                                <select onchange="clicksiswa()" name="txtsiswa" id="txtsiswa" class="form-control" disabled>
                                                    <option value="<?= $id_siswa; ?>"><?= $nama_siswa; ?></option>
                                                </select>
                                            </td>
                                            <td width="20%"><label for="">Tanggal Pengembalian</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_pengembalian" value="<?= $tgl_pengembalian; ?>" disabled></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Kelas</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkelas" disabled value="<?= $kelas; ?>"></td>
                                            <td width="20%"><label for="">Tanggal Sekarang</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_sekarang" disabled value="<?= $tgl_sekarang; ?>"></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Denda</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtdenda" disabled value="<?= $denda; ?>"></td>
                                            <td width="20%"><label for="">Telat</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txttelat" disabled value="<?= $telat; ?>"></td>
                                        </tr>
                                    </table>
                                <?php } ?>
                                <a href="#" onclick="clickProses()" class="btn btn-primary"><i class="fa fa-fw fa-plus-square"></i> Proses</a>
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
                                            <?php
                                            if ($dtpeminjaman !== 0) {
                                                $no = 1;
                                                foreach ($dtpeminjaman as $k) {
                                                    $kode = $k->kode_peminjaman_detail;
                                                    $judul = $k->judul;
                                                    $penerbit = $k->penerbit;
                                                    $pengarang = $k->pengarang;
                                                    $jenis = $k->jenis;
                                            ?>
                                                    <tr>
                                                        <td><?= $no++; ?></td>
                                                        <td><?= $kode; ?></td>
                                                        <td><?= $judul; ?></td>
                                                        <td><?= $penerbit; ?></td>
                                                        <td><?= $pengarang; ?></td>
                                                        <td><?= $jenis; ?></td>
                                                        <td></td>
                                                    </tr>
                                            <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal tambah transaksi-->
        <div class="modal fade" id="tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"> <i class="fa fa-bell"> </i> Peringatan !</h5>
                        <button onclick="clickclose()" type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body row">
                        <video class="col-md-12" id="preview"></video>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery -->
        <script src="<?= base_url() ?>assets/vendors/jquery/dist/jquery.min.js"></script>

        <!-- Datatables -->
        <script src="<?= base_url() ?>assets/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/jszip/dist/jszip.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/pdfmake/build/pdfmake.min.js"></script>
        <script src="<?= base_url() ?>assets/vendors/pdfmake/build/vfs_fonts.js"></script>
        <script>
            function clickProses() {
                var id_siswa = $('#txtsiswa').val();
                var kel = $('#txtkelas').val();
                var kode = $('#txtkode_transaksi').val();
                var tglpinjam = $('#txttgl_peminjaman').val();
                var tglkembali = $('#txttgl_pengembalian').val();
                console.log(id_siswa, kel, kode, tglpinjam, tglkembali);

                if (kel == '') {

                } else if (kode == '') {

                } else if (tglpinjam == '') {

                } else if (tglkembali == '') {

                } else if (id_siswa == 'kosong') {

                } else {

                    if (confirm('Apakah Yakin dengan keputusan Anda?')) {

                        $.ajax({
                            url: "<?= base_url('menu/prosesPeminjaman'); ?>",
                            type: "post",
                            data: {
                                kode_transaksi: kode
                            },
                            dataType: "json",
                            cache: false,
                            success: function(data) {
                                console.log(data);
                                if (data == '1') {
                                    alert('sukses')
                                    window.location = ''
                                } else if (data == 'dataMasihKosong') {
                                    alert('dataMasihKosong')
                                } else if (data == 'peminjamanGagalDiHapus') {
                                    alert('peminjamanGagalDiHapus')
                                    window.location = ''
                                } else if (data == 'peminjamanDetailGagalDiHapus') {
                                    alert('peminjamanDetailGagalDiHapus')
                                    window.location = ''
                                }
                            },
                            error: function(jqxhr, status, err) {
                                console.log(jqxhr)
                                alert('Koneksi Lambat. clicksiswa')
                                window.location = ''
                            }
                        });
                    }

                }
            }
        </script>