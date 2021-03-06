<!-- page content -->
<div class="right_col" role="main">
	<div class="">

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>Data Admin</h2>
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
								<a href="<?= base_url() ?>menu/tambah_admin" class="btn btn-success"><i class="fa fa-fw fa-plus-square"></i> Tambah Data Admin</a>
								<div class="card-box table-responsive">
									<table id="datatable-buttons" class="table table-striped table-bordered" style="width:100%">
										<thead>
											<tr>
												<th>No</th>
												<th>Foto</th>
												<th>Nama</th>
												<th>Email</th>
												<th>Username</th>
												<th>Password</th>
												<th>Status</th>
												<th>Aksi</th>
											</tr>
										</thead>
										<tbody>
											<?php
											$n = 1;
											foreach ($data as $dt) { ?>
												<tr>
													<td><?= $n++ ?></td>
													<td><img style="width:120px; height: 120px;" src="<?= base_url() ?>assets/images/admin/<?= $dt['foto']; ?>"></td>
													<td><?= $dt['nama']; ?></td>
													<td><?= $dt['email']; ?></td>
													<td><?= $dt['username']; ?></td>
													<td><?= base64_decode($dt['password']); ?></td>
													<td><?php if ($dt['status'] == '1') {
															echo "Aktif";
														} else {
															echo "Non-Aktif";
														} ?></td>


													<td style="width: 80px;">
														<a class="btn btn-success btn-sm" href="<?= base_url() ?>menu/edit_admin/<?= $dt['id'] ?>"><i class="fa fa-pencil"></i></a>
														<button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapus_buku<?= $n; ?>"><i class="fa fa-trash"></i></button>
													</td>
												</tr>
												<!-- Modal Konfirmasi HApus-->
												<div class="modal fade" id="hapus_buku<?= $n; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
																	<a class="btn btn-success" href="<?= base_url() ?>menu/hapus_admin/<?= $dt['id'] ?>"><i class="fa fa-check"></i> Konfirmasi</a>
																</center>
															</div>
														</div>
													</div>
												</div>>
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
		<script>
		setTimeout(() => {
			document.getElementById("m5").classList.add("active");
			document.getElementById("thead").innerHTML = "Data Admin | Web Perpus";
			alert('asdf')
		}, 3500);
		</script>