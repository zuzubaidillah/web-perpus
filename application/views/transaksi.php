<script src="<?= base_url(); ?>assets/js/instascan.min.js"></script>

<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Data Transaksi</h2>
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
								<button class="btn btn-success" onclick="clickscan()"><i class="fa fa-fw fa-plus-square"></i> Transaksi Baru</button>
								<div class="card-box table-responsive"><br>
									<table id="datatable" class="table table-striped table-bordered" style="width:100%">
										<thead>
											<tr>
												<th>No</th>
												<th>Kode Peminjaman</th>
												<th>Siswa</th>
												<th>Kelas</th>
												<th>Tgl Peminjaman</th>
												<th>Tgl Pengembalian</th>
												<th style="width: 50px;">Jumlah Dipinjam</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<?php
											if ($pinjam !== 0) {
												$no = 1;
												foreach ($pinjam as $k) {
													$kode = $k->kode_peminjaman;
													$siswa = $k->nama_siswa;
													$kelas = $k->kelas;
													$tgl_pinjam = $k->tgl_peminjaman;
													$tgl_pengembalian = $k->tgl_pengembalian;
													$jml = $k->jumlah_dipinjam;
													$status = $k->status_pengembalian;
											?>
													<tr>
														<td><?=$no;?></td>
														<td><?=$kode;?></td>
														<td><?=$siswa;?></td>
														<td><?=$kelas;?></td>
														<td><?=$tgl_pinjam;?></td>
														<td><?=$tgl_pengembalian;?></td>
														<td><?=$jml;?></td>
														<td><?=$status;?></td>
													</tr>
											<?php
												$no++;
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
		<br>
		<br>
		<br>

		<!-- Modal Konfirmasi HApus-->
		<div class="modal fade" id="hapus_transaksi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"> <i class="fa fa-bell"> </i> Peringatan !</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<center>
							<h5>Anda Akan Menghapus Data Ini ...?</h5>
							<br>
							<button class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Batal</button>
							<a class="btn btn-success" href="#"><i class="fa fa-check"></i> Konfirmasi</a>
						</center>
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
	</div>
</div>

<script>
	var scanner = new Instascan.Scanner({
		video: document.getElementById('preview')
	});

	function clickscan() {
		$('#tambah').modal("show")
		setTimeout(() => {

			scanner.addListener('scan', function(content) {
				console.log(content);
				var audio = new Audio('<?= base_url("assets/images/beep.mp3"); ?>');
				audio.play();

				$.ajax({
					url: "<?= base_url('menu/hasil_scan'); ?>",
					type: "post",
					data: {
						qrcode: content
					},
					dataType: "json",
					cache: false,
					success: function(o) {
						$('#tambah').modal("hide")
						const that = this;
						this.ispreview = false;
						that.isclick = true;
						scanner.stop();
						console.log(o);
						if (o == 0) {
							setTimeout(() => {
								window.location = '<?= base_url(); ?>menu/transaksi_pinjam'
							}, 500);
						} else {
							setTimeout(() => {
								window.location = '<?= base_url(); ?>menu/transaksi_pengembalian/kode_buku'
							}, 500);
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

	function clickclose() {
		// $('#preview').pause()
		// $('#preview').srcObject("")
		const video = document.getElementById('preview');

		// A video's MediaStream object is available through its srcObject attribute
		const mediaStream = video.srcObject;

		// Through the MediaStream, you can get the MediaStreamTracks with getTracks():
		// const tracks = mediaStream.getTracks();

		// Tracks are returned as an array, so if you know you only have one, you can stop it with: 
		// tracks[0].stop();
		// const that = this;
		// this.ispreview = false;
		// that.isclick = true;
		scanner.stop();
		// Or stop all like so:
		// tracks.forEach(track => track.stop())
	}
</script>