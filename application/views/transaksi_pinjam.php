<script src="<?= base_url(); ?>assets/js/instascan.min.js"></script>

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
                                            <td width="20%"><label for="">????</label></td>
                                            <td width="30%"></td>
                                        </tr>
                                    </table>
                                <?php } else { ?>
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
                                            <td width="30%"><input type="text" class="form-control" id="txttgl_pengembalian" value="<?= $tgl_pengembalian; ?>" disabled></td>
                                        </tr>
                                        <tr>
                                            <td width="20%"><label for="">Kelas</label></td>
                                            <td width="30%"><input type="text" class="form-control" id="txtkelas" disabled></td>
                                            <td width="20%"><label for="">????</label></td>
                                            <td width="30%"></td>
                                        </tr>
                                    </table>
                                <?php } ?>
                                <a href="#" onclick="clickTambahBuku()" class="btn btn-success"><i class="fa fa-fw fa-plus-square"></i> Tambah Buku</a>
                                <a href="#" onclick="clickReset()" class="btn btn-danger"><i class="fa fa-fw fa-trash"></i> Reset</a>
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
            $(document).ready(function() {
                $('#tabel_peminjaman_detail').DataTable().destroy();
                setTimeout(() => {
                    tbl()
                }, 500);
            });

            function tbl() {

                $('#tabel_peminjaman_detail').DataTable({
                    "initComplete": function(settings, json) {
                        // hilangreload()
                    },
                    "scrollX": true,
                    "processing": true,
                    lengthMenu: [
                        [-1],
                        ["All"]
                    ],
                    "paging": false,
                    "lengthChange": true,
                    "searching": false,
                    "ordering": false,
                    "info": true,
                    "autoWidth": false,
                    "responsive": false,
                    colReorder: {
                        realtime: true
                    },
                    "ajax": "<?= base_url(); ?>menu/apiPeminjaman",
                    "columns": [{
                            "data": "no",
                            render: function(data, type, row, meta) {
                                data = '<div align="center">' + data + '</div>'
                                return data;
                            }
                        },
                        {
                            "data": "kode_peminjaman_detail"
                        },
                        {
                            "data": "judul"
                        },
                        {
                            "data": "penerbit"
                        },
                        {
                            "data": "pengarang"
                        },
                        {
                            "data": "jenis"
                        },
                        {
                            "data": "aksi"
                        }
                    ],
                    "createdRow": function(row, data, dataIndex) {
                        if (data.judul == "tot") {
                            // $(row).addClass('bg-olive')
                        } else if (data.judul == "-") {
                            // $(row).addClass('bg-info')
                        }
                    }
                });
            }

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
                        if (data !== 0) {
                            $('#txtkelas').val(data[0].kelas);
                        }
                    },
                    error: function(jqxhr, status, err) {
                        console.log(jqxhr)
                        alert('Koneksi Lambat. clicksiswa')
                        window.location = ''
                    }
                });
            }


            var scanner = new Instascan.Scanner({
                video: document.getElementById('preview')
            });

            function clickTambahBuku() {
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

                    $('#tambah').modal("show")
                    setTimeout(() => {

                        scanner.addListener('scan', function(content) {
                            console.log(content);
                            var audio = new Audio('<?= base_url("assets/images/beep.mp3"); ?>');
                            audio.play();

                            $.ajax({
                                url: "<?= base_url('menu/cariKodeBukuDanSimpan'); ?>",
                                type: "post",
                                data: {
                                    qrcode: content,
                                    kelas: kel,
                                    kode_transaksi: kode,
                                    tgl_peminjaman: tglpinjam,
                                    tgl_pengembalian: tglkembali,
                                    id_siswa: id_siswa
                                },
                                dataType: "json",
                                cache: false,
                                success: function(o) {
                                    console.log(o);
                                    if (o == 'bukuSudahAda') {

                                    } else if (o == 'gagalSimpanPeminjaman') {

                                    } else if (o == 'gagalSimpanPeminjamanDetail') {

                                    } else if (o == 'bukuSudahDiPinjam') {

                                    } else if (o == 'bukuTidakAda') {

                                    } else if (o == 'sukses') {

                                        $('#tambah').modal("hide")
                                        const that = this;
                                        this.ispreview = false;
                                        that.isclick = true;
                                        scanner.stop();
                                        $('#tabel_peminjaman_detail').DataTable().ajax.reload()
                                        setTimeout(() => {}, 500);
                                        var nmsiswa = $('#txtsiswa').find(':selected').text()
                                        $('#txtsiswa').html('<option value="' + id_siswa + '">' + nmsiswa + '</option>');
                                        $('#txtsiswa').attr("disabled", true);
                                    }
                                },
                                error: function(jqxhr, status, err) {
                                    console.log(jqxhr)
                                    alert('Koneksi Lambat. clickscan')
                                    window.location = ''
                                }
                            });
                        });
                        Instascan.Camera.getCameras().then(function(cameras) {
                            if (cameras.length > 0) {
                                scanner.start(cameras[0]);
                            } else {
                                // console.error('No cameras found.');
                                alert('No cameras found.');
                            }
                        }).catch(function(e) {
                            console.error(e);
                            alert(e);
                        });
                    }, 500);
                }
            }

            function clickReset() {
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
                            url: "<?= base_url('menu/resetPeminjamanProses'); ?>",
                            type: "post",
                            data: {
                                kelas: kel,
                                kode_transaksi: kode,
                                tgl_peminjaman: tglpinjam,
                                tgl_pengembalian: tglkembali,
                                id_siswa: id_siswa
                            },
                            dataType: "json",
                            cache: false,
                            success: function(data) {
                                console.log(data);
                                if (data == '1') {
                                    alert('sukses')
                                    window.location = ''
                                }else if (data == 'dataMasihKosong') {
                                    alert('dataMasihKosong')
                                }else if (data == 'peminjamanGagalDiHapus') {
                                    alert('peminjamanGagalDiHapus')
                                    window.location = ''
                                }else if (data == 'peminjamanDetailGagalDiHapus') {
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

            function clickclose() {
                const video = document.getElementById('preview');
                const mediaStream = video.srcObject;
                scanner.stop();
            }
        </script>