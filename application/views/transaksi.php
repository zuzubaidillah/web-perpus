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
								<button class="btn btn-success" data-toggle="modal" data-target="#tambah" ><i class="fa fa-fw fa-plus-square"></i> Transaksi Baru</button>
								<div class="card-box table-responsive"><br>
									<table id="datatable" class="table table-striped table-bordered" style="width:100%">
										<thead>
											<tr>
												<th>No</th>
												<th>No Peminjaman</th>
												<th>Nama Buku</th>
												<th>Nama Peminjam</th>
												<th>Nama Admin</th>
												<th>Tgl Peminjaman</th>
												<th>Tgl Pengembalian</th>
												<th style="width: 50px;">Jumlah Dipinjam</th>
												<th>Status</th>
												<th>Aksi</th>
											</tr>
										</thead>
										<tbody>
											<?php
											$n=1;
											foreach ($transaksi as $ts) { ?>
												<tr>
													<td><?= $n++; ?></td>
													<td><?= $ts['kode_peminjaman']; ?></td>
													<td><?= $ts['nama_buku']; ?></td>
													<td><?= $ts['nama_siswa'] ;?></td>
													<td><?= $ts['admin']; ?></td>
													<td><?= date('d F Y', $ts['tgl_peminjaman']); ?></td>
													<td><?= date('d F Y', $ts['tgl_pengembalian']); ?></td>
													<td><?= $ts['jumlah_dipinjam']; ?></td>
													<?php if ($ts['status_pengembalian']=='1') {
														echo "<td><span class='badge badge-success'>Dikembalikan</span></td>";
													}else{
														echo "<td><span class='badge badge-success'>Belum Dikembalikan</span></td>";
													} ?>
													<td style="width: 80px;">
														<a class="btn btn-success btn-sm" href="<?= base_url()?>menu/detail_transaksi/<?=$ts['kode_peminjaman']; ?>"><i class="fa fa-eye"></i></a>
														<button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus_transaksi"><i class="fa fa-trash"></i></button>
														<?php if (!$ts['status_pengembalian']=='1') {
															echo "<a class='btn btn-primary btn-sm' href='".base_url()."menu/pengembalian_buku/".$ts['kode_peminjaman']."'><i class='fa fa-check'></i></a>";
														} ?>
														
														
													</td>
												</tr>
											<?php } ?>
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
							<button class="btn btn-danger" data-dismiss="modal" ><i class="fa fa-close"></i> Batal</button>
							<a class="btn btn-success" href="#"><i class="fa fa-check"></i> Konfirmasi</a>
						</center>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal tambah transaksi-->
		<div class="modal fade" id="tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"> <i class="fa fa-bell"> </i> Peringatan !</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form method="post" action="<?=base_url() ?>menu/tambah_transaksi">

							<div class="field item form-group">
								<label class="col-form-label col-md-3 col-sm-3  label-align">Nis Siswa</label>
								<div class="col-md-6 col-sm-6">
									<input class="form-control" name="nis"  required="required" />
								</div>
							</div>
							<div class="field item form-group">
								<label class="col-form-label col-md-3 col-sm-3  label-align">Kode Buku</label>
								<div class="col-md-6 col-sm-6">
									<input class="form-control" name="kode_buku"  required="required" />
								</div>
							</div>
						</div>
							<br>
							<div class="modal-footer">
							
								<div class="col-md-6 offset-md-6">
									<button type='reset' class="btn btn-primary"><i class="fa fa-chevron-circle-left"></i> Reset</button>
									<button type='submit' class="btn btn-success"><i class="fa fa-save"></i>  Submit</button>
								</div>
						
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>