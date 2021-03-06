<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Detail Peminjaman - <?= $transaksi->kode_peminjaman ?></h2>
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
							<div class="col-md-4">
								<table class="table table-borderless">
									<tr>
										<td><strong>No Peminjaman</strong></td>
										<td>:</td>
										<td><?= $transaksi->kode_peminjaman; ?></td>
									</tr>
									<tr>
										<td><strong>Nama Admin</strong></td>
										<td>:</td>
										<td><?= $transaksi->admin; ?></td>
									</tr>
									<tr>
										<td><strong>Nama Peminjam</strong></td>
										<td>:</td>
										<td><?= $transaksi->nama_siswa ?></td>
									</tr>
									<tr>
										<td><strong>Tanggal Peminjaman</strong></td>
										<td>:</td>
										<td><?= date('d F Y', $transaksi->tgl_peminjaman); ?></td>
									</tr>
									<tr>
										<td><strong>Tanggal Pengembalian</strong></td>
										<td>:</td>
										<td><?= date('d F Y', $transaksi->tgl_pengembalian); ?></td>
									</tr>
									
								</table>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-12">
								<table class="table table-bordered text-center">
									<thead>
										<tr>
											<th>No</th>
											<th>Kode Buku</th>
											<th>Foto</th>
											<th>Nama Buku</th>
											<th>Pengarang</th>
											<th>Penempatan</th>
											<th style="width:60px;">Jumlah Dipinjam</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<?php $n=1; ?>
											<td><?=$n++; ?></td>
											<td><?=$transaksi->kode_buku; ?></td>
											<td><img style="width:120px; height: 120px;" src="<?=base_url() ?>assets/images/buku/<?=$transaksi->foto; ?>"></td>
											<td><?= $transaksi->nama_buku; ?></td>
											<td><?= $transaksi->pengarang; ?></td>
											<td><?= $transaksi->penempatan; ?></td>
											<td><?= $transaksi->jumlah_dipinjam; ?></td>
											<?php if ($transaksi->status_pengembalian=='1') {
														echo "<td><span class='badge badge-success'>Dikembalikan</span></td>";
													}else{
														echo "<td><span class='badge badge-success'>Belum Dikembalikan</span></td>";
													} ?>
										</tr>
									</tbody>
								</table>
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
		<div class="modal fade" id="hapus_buku" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
							<button class="btn btn-danger" data-dismiss="modal" ><i class="fa fa-close"></i> Batal</button>
							<a class="btn btn-success" href="#"><i class="fa fa-check"></i> Konfirmasi</a>
						</center>
					</div>
				</div>
			</div>
		</div>