<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
			</div>
		</div>

		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12  ">
				<div class="x_panel">
					<div class="x_title">
						<h2>My Profile</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<!-- <form method="get"> -->
							<div class="row mt-3">
								<div class="col-md-3 col-sm-12  form-group ml-5">
									<label>Pilih Cetak Qr Code</label><br>
									<select onchange="clickjeniscetak()" id="category" name="category" width class="form-control">
										<option value=""> ------ Pilih Cetak Qr Code ------ </option>
										<option value="semua">Cetak Semuanya</option>
										<option value="judul">Berdasarkan Judul Buku</option>
										<option value="pengarang">Berdasarkan Pengarang</option>
									</select>
								</div>
								<div class="col-md-7 col-sm-12  form-group mt-2">
									<br>
									<button onclick="clickplus()" type="submit" class="btn btn-primary "><i class="fa fa-plus"></i></button>
								</div>
								<div class="col-md-5 col-sm-12  form-group ml-5">
									<div id="htmlinput">
									</div>
								</div>
						<!-- </form> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /page content -->
<!-- jQuery -->
<script src="<?= base_url() ?>assets/vendors/jquery/dist/jquery.min.js"></script>
<script>
	function clickjeniscetak() {
		var a = document.getElementById('category').value;
		console.log(a);
		if (a == 'semua') {
			$('#htmlinput').html('')
		} else if (a == 'judul') {
			$('#htmlinput').html('\
								<div class="card-box table-responsive">\
									<table id="datatable-buttons" class="table table-striped table-bordered" style="width:100%">\
										<thead>\
											<tr>\
												<th>No</th>\
												<th>Kode Buku</th>\
												<th>Foto</th>\
												<th>Nama Buku</th>\
												<th>Pengarang</th>\
												<th>Penerbit</th>\
												<th>Aksi</th>\
											</tr>\
										</thead>\
										<tbody>\
												<tr>\
													<td></td>\
													<td></td>\
													<td></td>\
													<td></td>\
													<td></td>\
													<td></td>\
													<td></td>\
												</tr>\
										</tbody>\
									</table>\
								</div>')

		} else if (a == 'pengarang') {
			var hasil = `<div class="col-md-12 col-sm-12  form-group ml-5">
									<label>Pilih Nama Penerbit</label><br>
									<select onchange="" id="txtpenerbit" name="txtpenerbit" width class="form-control">
									`
			var footer2 = `</select>
									<button onclick="clickpenerbit()" type="submit" class="btn btn-primary "><i class="fa fa-plus"></i> Cetak QR-CODE Penerbit</button>
								</div>`
			var isi = ''
			$.ajax({
				type: "post",
				url: "<?=base_url();?>menu/ambilpengarang",
				dataType: "JSON",
				cache: false,
				success: function (data) {
					// console.log(data);
					for (let i = 0; i < data.length; i++) {
						isi += '<option value="'+data[i].penerbit+'">'+data[i].penerbit+'</option>'
					}
					$('#htmlinput').html(hasil+isi+footer2)
				},
				error: function(jqxhr, status, err) {
					console.log(jqxhr)
					alert('Koneksi Lambat. clickjeniscetak')
					window.location = ''
				}
			});
		}
	}

	function clickpenerbit() {
		var penerbit = $('#txtpenerbit').val()
		console.log(penerbit);
		penerbit = penerbit.replace(' ','-')
		penerbit = penerbit.replace(' ','-')
		penerbit = penerbit.replace(' ','-')
		penerbit = penerbit.replace(' ','-')
		window.location = '<?=base_url();?>menu/cetak_qr_code_sesuai_penerbit/'+penerbit
	}

	function clickplus() {
		var a = document.getElementById('category').value;
		console.log(a);
		if (a == 'semua') {
			window.location = '<?=base_url();?>menu/cetak_qr_code'
		}

	}
</script>