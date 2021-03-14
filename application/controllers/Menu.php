<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_menu');
		cekAuth();
		date_default_timezone_set("Asia/Jakarta");
	}
	public function index()
	{
		$this->dashboard();
	}
	public function dashboard()
	{
		$title['thead'] = ' dashboard | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('index');
		$this->load->view('template/footer');
	}
	public function transaksi()
	{
		$title['thead'] = ' Transaksi | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['pinjam'] = $this->M_menu->tabelsql("SELECT peminjaman.*,data_anggota.nama_siswa FROM peminjaman inner join data_anggota on peminjaman.id_siswa=data_anggota.id_siswa where peminjaman.status_pengembalian='dipinjam'");
		$this->load->view('transaksi', $data);
		$this->load->view('template/footer');
	}
	public function detail_transaksi($kode_peminjaman)
	{
		$title['thead'] = ' Detail Transaksi | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['transaksi'] = $this->M_menu->detailTransaksi($kode_peminjaman);
		$this->load->view('detail_transaksi', $data);
		$this->load->view('template/footer');
	}
	public function tambah_transaksi()
	{
		$nis = $this->input->post('nis');
		$kode_buku = $this->input->post('kode_buku');
		$uname = $this->session->userdata('username');
		$data['siswa'] = $this->M_menu->ambildatasiswa($nis)->row();
		$data['buku'] = $this->M_menu->ambildatabuku($kode_buku)->row();
		$data['admin'] =  $this->db->get_where('user', ['username' => $uname])->row_array();
		$title['thead'] = ' Transaksi | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('tambah_transaksi', $data);
		$this->load->view('template/footer');
	}
	public function pengembalian_buku($kode_peminjaman)
	{
		$tgl_kembali = time();
		$selesai = $this->M_menu->dikembalikan($tgl_kembali, $kode_peminjaman);
		if ($selesai) {
			redirect('menu/transaksi');
		}
	}
	public function data_anggota()
	{

		$title['thead'] = ' Data Anggota | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$me['get'] = $this->M_menu->getDatasiswa()->result();
		$this->load->view('data_anggota', $me);
		$this->load->view('template/footer');
	}
	public function simpan_anggota()
	{
		$nama_siswa = $this->input->post('nama_siswa');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$tanggal_lahir = strtotime($this->input->post('tanggal_lahir'));
		$nis = $this->input->post('nis');
		$nisn = $this->input->post('nisn');
		$kelas = $this->input->post('kelas');
		$alamat = $this->input->post('alamat');

		$config['upload_path'] = './assets/images/anggota';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite'] = false;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$simpan = array(
				'nama_siswa' => $nama_siswa,
				'foto' => 'default.jpg',
				'tempat_lahir' => $tempat_lahir,
				'tanggal_lahir' => $tanggal_lahir,
				'nis' => $nis,
				'nisn' => $nisn,
				'kelas' => $kelas,
				'alamat' => $alamat
			);
			$this->M_menu->saveAnggota($simpan);
			redirect('menu/data_anggota');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			$simpan = array(
				'nama_siswa' => $nama_siswa,
				'foto' => $upload_data['file_name'],
				'tempat_lahir' => $tempat_lahir,
				'tanggal_lahir' => $tanggal_lahir,
				'nis' => $nis,
				'nisn' => $nisn,
				'kelas' => $kelas,
				'alamat' => $alamat
			);
			$this->M_menu->saveAnggota($simpan);
			redirect('menu/data_anggota');
		}
	}
	public function tambah_anggota()
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('tambah_data_anggota');
		$this->load->view('template/footer');
	}
	public function edit_anggota($id)
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['siswa'] = $this->M_menu->editAnggota($id);
		$this->load->view('edit_data_anggota', $data);
		$this->load->view('template/footer');
	}
	public function update_anggota()
	{
		$id_siswa = $this->input->post('id_siswa');
		$foto_lama = $this->input->post('foto_lama');
		$nama_siswa = $this->input->post('nama_siswa');
		$tempat_lahir = $this->input->post('tempat_lahir');
		$tanggal_lahir = strtotime($this->input->post('tanggal_lahir'));
		$nis = $this->input->post('nis');
		$nisn = $this->input->post('nisn');
		$kelas = $this->input->post('kelas');
		$alamat = $this->input->post('alamat');

		$config['upload_path'] = './assets/images/anggota';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite'] = false;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$data = array(
				'nama_siswa' => $nama_siswa,
				'foto' => $foto_lama,
				'tempat_lahir' => $tempat_lahir,
				'tanggal_lahir' => $tanggal_lahir,
				'nis' => $nis,
				'nisn' => $nisn,
				'kelas' => $kelas,
				'alamat' => $alamat
			);
			$this->M_menu->updateAnggota($data, $id_siswa);
			redirect('menu/data_anggota');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			$data = array(
				'nama_siswa' => $nama_siswa,
				'foto' => $upload_data['file_name'],
				'tempat_lahir' => $tempat_lahir,
				'tanggal_lahir' => $tanggal_lahir,
				'nis' => $nis,
				'nisn' => $nisn,
				'kelas' => $kelas,
				'alamat' => $alamat
			);
			if ($foto_lama == 'default.jpg') {
				$this->M_menu->updateAnggota($data, $id_siswa);
				redirect('menu/data_anggota');
			} else {
				$this->M_menu->updateAnggota($data, $id_siswa);
				unlink(FCPATH . '/assets/images/anggota/' . $foto_lama);
				redirect('menu/data_anggota');
			}
		}
	}
	public function hapus_anggota($id_siswa)
	{
		$query = $this->M_menu->getIdsiswa($id_siswa);
		$foto = $query->foto;
		if ($foto == 'default.jpg') {
			$this->M_menu->hapusAnggota($id_siswa);
			redirect('menu/data_anggota');
		} else {
			$this->M_menu->hapusAnggota($id_siswa);
			unlink(FCPATH . '/assets/images/anggota/' . $foto);
			redirect('menu/data_anggota');
		}
	}
	public function data_buku()
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['data'] = $this->M_menu->getDatabuku()->result();
		$this->load->view('data_buku', $data);
		$this->load->view('template/footer');
	}
	public function tambah_buku()
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('tambah_data_buku');
		$this->load->view('template/footer');
	}
	public function simpan_buku()
	{
		$kode_buku = $this->input->post('kode_buku');
		$nama_buku = $this->input->post('nama_buku');
		$pengarang = $this->input->post('pengarang');
		$penerbit = $this->input->post('penerbit');
		$tahun_terbit = $this->input->post('tahun_terbit');
		$tahun_pembelian = $this->input->post('tahun_pembelian');
		$penempatan = $this->input->post('penempatan');
		$jumlah = $this->input->post('jumlah');

		$config['upload_path'] = './assets/images/buku';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite']  = true;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$data = array(
				'kode_buku' => $kode_buku,
				'nama_buku' => $nama_buku,
				'foto' => 'default.jpg',
				'pengarang' => $pengarang,
				'penerbit' => $penerbit,
				'tahun_terbit' => $tahun_terbit,
				'tahun_pembelian' => $tahun_pembelian,
				'penempatan' => $penempatan,
				'jumlah' => $jumlah
			);
			$this->M_menu->savebuku($data);
			redirect('menu/data_buku');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			// menginsert ke database
			$data = array(
				'kode_buku' => $kode_buku,
				'nama_buku' => $nama_buku,
				'foto' => $upload_data['file_name'],
				'pengarang' => $pengarang,
				'penerbit' => $penerbit,
				'tahun_terbit' => $tahun_terbit,
				'tahun_pembelian' => $tahun_pembelian,
				'penempatan' => $penempatan,
				'jumlah' => $jumlah
			);
			$this->M_menu->savebuku($data);
			redirect('menu/data_buku');
		}
	}
	public function edit_buku($id)
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['buku'] = $this->M_menu->editbuku($id);
		$this->load->view('edit_data_buku', $data);
		$this->load->view('template/footer');
	}
	public function update_buku()
	{
		$id_buku = $this->input->post('id_buku');
		$foto_lama = $this->input->post('foto_lama');
		$kode_buku = $this->input->post('kode_buku');
		$nama_buku = $this->input->post('nama_buku');
		$pengarang = $this->input->post('pengarang');
		$penerbit = $this->input->post('penerbit');
		$tahun_terbit = $this->input->post('tahun_terbit');
		$tahun_pembelian = $this->input->post('tahun_pembelian');
		$penempatan = $this->input->post('penempatan');
		$jumlah = $this->input->post('jumlah');

		$config['upload_path'] = './assets/images/buku';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite'] = false;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$data = array(
				'kode_buku' => $kode_buku,
				'nama_buku' => $nama_buku,
				'foto' => $foto_lama,
				'pengarang' => $pengarang,
				'penerbit' => $penerbit,
				'tahun_terbit' => $tahun_terbit,
				'tahun_pembelian' => $tahun_pembelian,
				'penempatan' => $penempatan,
				'jumlah' => $jumlah
			);
			$this->M_menu->updateBuku($data, $id_buku);
			redirect('menu/data_buku');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			$data = array(
				'kode_buku' => $kode_buku,
				'nama_buku' => $nama_buku,
				'foto' => $foto_lama,
				'pengarang' => $pengarang,
				'penerbit' => $penerbit,
				'tahun_terbit' => $tahun_terbit,
				'tahun_pembelian' => $tahun_pembelian,
				'penempatan' => $penempatan,
				'jumlah' => $jumlah
			);
			if ($foto_lama == 'default.jpg') {
				$this->M_menu->updateBuku($data, $id_buku);
				redirect('menu/data_buku');
			} else {
				$this->M_menu->updateBuku($data, $id_buku);
				unlink(FCPATH . '/assets/images/buku/' . $foto_lama);
				redirect('menu/data_buku');
			}
		}
	}
	public function hapus_buku($id_buku)
	{
		$query = $this->M_menu->getIdbuku($id_buku);
		$foto = $query->foto;
		$path = FCPATH . '/assets/images/buku/' . $foto;
		if ($this->M_menu->hapusbuku($id_buku)) {
			if ($foto != 'default.jpg') {
				unlink($path);
			}
			redirect('menu/data_buku');
		}
	}
	public function data_admin()
	{
		cekRole();
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['data'] = $this->M_menu->getDataadmin()->result_array();
		$this->load->view('data_admin', $data);
		$this->load->view('template/footer');
	}
	public function tambah_admin()
	{
		cekRole();
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('tambah_data_admin');
		$this->load->view('template/footer');
	}
	public function simpan_admin()
	{
		cekRole();
		$nama = $this->input->post('nama');
		$email = $this->input->post('email');
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$config['upload_path'] = './assets/images/admin';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite']  = true;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$data = array(
				'nama'		=>	$nama,
				'email'		=>	$email,
				'username'	=>	$username,
				'foto'		=>	'default.jpg',
				'password' 	=>	md5($password),
				'role_id' 	=>	'2',
				'status'	=>	'1'
			);
			$this->M_menu->saveAdmin($data);
			redirect('menu/data_admin');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			// menginsert ke database
			$data = array(
				'nama'		=>	$nama,
				'email'		=>	$email,
				'username'	=>	$username,
				'foto'		=>	$upload_data['file_name'],
				'password' 	=>	md5($password),
				'role_id' 	=>	'2',
				'status'	=>	'1'
			);
			$this->M_menu->saveAdmin($data);
			redirect('menu/data_admin');
		}
	}
	public function edit_admin($id)
	{
		cekRole();
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$data['admin'] = $this->M_menu->editAdmin($id);
		$this->load->view('edit_data_admin', $data);
		$this->load->view('template/footer');
	}
	public function update_admin()
	{
		$id = $this->input->post('id');
		$foto_lama = $this->input->post('foto_lama');
		$pw_lama = $this->input->post('pw_lama');
		$nama = $this->input->post('nama');
		$email = $this->input->post('email');
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$status = $this->input->post('status');

		$config['upload_path'] = './assets/images/admin';
		$config['allowed_types'] = 'jpg|jpeg|png|gif';
		$config['max_size']  = '4096';
		$config['overwrite'] = false;

		$this->load->library('upload', $config);

		if (!$this->upload->do_upload('foto')) {
			$data = array(
				'nama'		=>	$nama,
				'email'		=>	$email,
				'username'	=>	$username,
				'foto'		=>	$foto_lama,
			);
			if ($password == $pw_lama) {
				$data['password'] = $pw_lama;
			} else {
				$data['password'] = base64_encode($password);
			}

			if (!$status == NULL) {
				$data['status']	=	'1';
			} else {
				$data['status'] = '0';
			}
			$this->M_menu->updateAdmin($data, $id);
			redirect('menu/data_admin');
		} else {
			// mengupload data ke folder
			$upload_data = $this->upload->data();
			$data = array(
				'nama'		=>	$nama,
				'email'		=>	$email,
				'username'	=>	$username,
				'foto'		=>	$upload_data['file_name'],
				'password' 	=>	$password
			);
			if ($password == $pw_lama) {
				$data['password'] = $pw_lama;
			} else {
				$data['password'] = base64_encode($password);
			}
			if (!$status == NULL) {
				$data['status']	=	'1';
			} else {
				$data['status'] = '0';
			}


			if ($foto_lama == 'default.jpg') {
				$this->M_menu->updateAdmin($data, $id);
				redirect('menu/data_admin');
			} else {
				$this->M_menu->updateAdmin($data, $id);
				unlink(FCPATH . '/assets/images/admin/' . $foto_lama);
				redirect('menu/data_admin');
			}
		}
	}
	public function hapus_admin($id)
	{
		$query = $this->M_menu->getIdadmin($id);
		$foto = $query->foto;
		$path = FCPATH . '/assets/images/admin/' . $foto;
		if ($this->M_menu->hapusadmin($id)) {
			if ($foto != 'default.jpg') {
				unlink($path);
			}
			redirect('menu/data_admin');
		}
	}
	public function my_profile()
	{
		$title['thead'] = ' | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('my_profile');
		$this->load->view('template/footer');
	}

	public function pilih_cetak_qr_code()
	{	
		$title['thead'] = 'Pilih yang Dicetak | Web Perpus ';
		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('pilih_cetak_qr_code');
		$this->load->view('template/footer');
	}

	public function cetak_qr_code()
	{	

		$dt = [
            'mode'              => 'utf-8',
            'format'            => 'A4',
            'default_font_size' => 0,
            'default_font'      => '',
            'margin_left'       => 5,
            'margin_right'      => 5,
            'margin_top'        => 3,
            'margin_bottom'     => 2,
            'margin_header'     => 0,
            'margin_footer'     => 0,
            'orientation'       => 'P'
        ];
        $mpdf = new \Mpdf\Mpdf($dt);
        $data['title'] = "cetak_qr_code";
        $html = $this->load->view('cetak_qr_code', $data, true);
        $mpdf->WriteHTML($html);
        $mpdf->Output('contoh.pdf', \Mpdf\Output\Destination::INLINE);
        // $mpdf->Output(); // opens in browser
        //$mpdf->Output('invoice.pdf','D'); // it will work as normal download
	}

	public function cetak_qr_code_sesuai_judul()
	{	

		$dt = [
            'mode'              => 'utf-8',
            'format'            => 'A4',
            'default_font_size' => 0,
            'default_font'      => '',
            'margin_left'       => 5,
            'margin_right'      => 5,
            'margin_top'        => 3,
            'margin_bottom'     => 2,
            'margin_header'     => 0,
            'margin_footer'     => 0,
            'orientation'       => 'P'
        ];
        $mpdf = new \Mpdf\Mpdf($dt);
        $data['title'] = "cetak_qr_code";
        $html = $this->load->view('cetak_qr_code_sesuai_judul', $data, true);
        $mpdf->WriteHTML($html);
        $mpdf->Output('contoh.pdf', \Mpdf\Output\Destination::INLINE);
        // $mpdf->Output(); // opens in browser
        //$mpdf->Output('invoice.pdf','D'); // it will work as normal download
	}

	public function cetak_qr_code_sesuai_penerbit($txtpenerbit=0)
	{

		$dt = [
            'mode'              => 'utf-8',
            'format'            => 'A4',
            'default_font_size' => 0,
            'default_font'      => '',
            'margin_left'       => 5,
            'margin_right'      => 5,
            'margin_top'        => 3,
            'margin_bottom'     => 2,
            'margin_header'     => 0,
            'margin_footer'     => 0,
            'orientation'       => 'P'
        ];
        $mpdf = new \Mpdf\Mpdf($dt);
        $data['title'] = "cetak_qr_code";
		$txtpenerbit = str_replace('-',' ',$txtpenerbit);
        $data['txtpenerbit'] = $txtpenerbit;
        $html = $this->load->view('cetak_qr_code_sesuai_penerbit', $data, true);
        $mpdf->WriteHTML($html);
        $mpdf->Output('contoh.pdf', \Mpdf\Output\Destination::INLINE);
        // $mpdf->Output(); // opens in browser
        //$mpdf->Output('invoice.pdf','D'); // it will work as normal download
	}

	function ambilpengarang() {

		$datapengarang = $this->M_menu->tabelsql("SELECT DISTINCT penerbit FROM buku");
		echo json_encode($datapengarang);
	}

	function hasil_scan() {
		$kode = $this->input->post("qrcode");
		$data = $this->M_menu->tabelsql("SELECT *  FROM v_pinjam WHERE kode_buku='$kode' AND status_pengembalian='dipinjam' ORDER BY tgl_peminjaman DESC");
		// if ($data==0) {
		// 	$data = $this->M_menu->tabelsql("SELECT *  FROM buku WHERE kode_buku='$kode'");
		// }
		$hasil = $data;
		echo json_encode($hasil);
	}

	function transaksi_pinjam(){
		
		$title['thead'] = ' Transaksi Pinjam | Web Perpus ';
		// mendeteksi apakah ada yang masih proses peminjaman
		// status_pengembalian = 'proses' proses transaksi
		// status_pengembalian = 'dipinjam' masih dipinjam
		// status_pengembalian = 'kembali' sudah dikembalikan
		$cekPeminjaman = $this->M_menu->tabelsql("SELECT * FROM v_pinjam WHERE status_pengembalian='proses'");
		if ($cekPeminjaman==0) {
			$data['cektransaksi'] = false;
			$data['dtsiswa'] = $this->M_menu->tabelsql("SELECT * FROM data_anggota WHERE id_siswa NOT IN(SELECT id_siswa FROM v_pinjam WHERE status_pengembalian='dipinjam')");
			$data['dtpeminjaman'] = false;
			$cekjumlahtransaksi = $this->M_menu->tabelsql("SELECT count(status_pengembalian) as jml FROM v_pinjam WHERE status_pengembalian!='proses'");
			$id_uniq = mt_rand(1,2000000000);
			$date = date("Y-m-d");
			$date = strtotime($date);
			$date7 = strtotime("+7 day", $date);
			// $date = date("Y-m-d");
			$data['tgl_peminjaman'] = date('Y-m-d', $date);
			$data['tgl_pengembalian'] = date('Y-m-d', $date7);

			$cekKodePeminjaman = $this->M_menu->tabelsql("SELECT kode_peminjaman_detail FROM peminjaman_detail WHERE kode_peminjaman_detail='$id_uniq'");
			if ($cekKodePeminjaman!==0) {
				$id_uniq = mt_rand();
			}

			$jml = $cekjumlahtransaksi[0]->jml;
			$h = strlen($jml);
			$j = $jml + 1;
			if ($jml == '9') {
				$h = '00' . $j;
			} else if ($jml == '99') {
				$h = '0' . $j;
			} else if ($jml == '999') {
				$h = $j;
			} else if ($h == 1) {
				$h = '000' . $j;
			} else if ($h == 2) {
				$h = '00' . $j;
			} else if ($h == 3) {
				$h = '0' . $j;
			} else {
				$h = $j;
			}
			$id_tagihan = 'TRA-' . $h . '-' . $id_uniq;
			$data['kode_transaksi'] = $id_tagihan;
		}else{
			// proses ketika masih ada transaksi yang belum diselesaikan
			$data['cektransaksi'] = true;
			$data['dtsiswa'] = false;
			$data['kode_transaksi'] = $cekPeminjaman[0]->kode_peminjaman;
			$data['id_siswa'] = $cekPeminjaman[0]->id_siswa;
			$data['nama_siswa'] = $cekPeminjaman[0]->nama_siswa;
			$data['kelas'] = $cekPeminjaman[0]->kelas;
			$data['tgl_peminjaman'] = $cekPeminjaman[0]->tgl_peminjaman;
			$data['tgl_pengembalian'] = $cekPeminjaman[0]->tgl_pengembalian;
			$data['dtpeminjaman'] = $cekPeminjaman;
		}

		$this->load->view('template/header', $title);
		$this->load->view('template/sidebar');
		$this->load->view('template/topbar');
		$this->load->view('transaksi_pinjam', $data);
		$this->load->view('template/footer');

	}

	function carisiswasesuaiidsiswa(){
		$id_siswa = $this->input->post('id_siswa');
		$data = $this->M_menu->tabelsql("SELECT kelas  FROM data_anggota WHERE id_siswa='$id_siswa'");
		echo json_encode($data);
	}

	public function cariKodeBukuDanSimpan()
	{
		$kode_buku = $this->input->post('qrcode');
		$kode_transaksi = $this->input->post('kode_transaksi');
		$kelas = $this->input->post('kelas');
		$id_siswa = $this->input->post('id_siswa');
		$tgl_peminjaman = $this->input->post('tgl_peminjaman');
		$tgl_pengembalian = $this->input->post('tgl_pengembalian');
		$denda = 0;
		$telat = 0;
		$cekKodeBuku = $this->M_menu->tabelsql("SELECT kode_buku FROM buku WHERE kode_buku='$kode_buku'");

		if ($cekKodeBuku==0) {
			$data = 'bukuTidakAda';
		}else{
			$cekKodeBukuDiV_pinjam = $this->M_menu->tabelsql("SELECT kode_buku  FROM v_pinjam WHERE kode_buku='$kode_buku' AND status_pengembalian='dipinjam'");

			if ($cekKodeBukuDiV_pinjam!==0) {
				$data = 'bukuSudahDiPinjam';
				echo json_encode($data);
				die();
			}else{
				// cek apakah kode_peminjaman sudah ada
				$cekKodeTransaksi = $this->M_menu->tabelsql("SELECT kode_buku  FROM v_pinjam WHERE kode_peminjaman='$kode_transaksi' AND status_pengembalian='proses'");
				if ($cekKodeTransaksi==0) {
					// code dibawah ini dijalankan jika kodeTransaksi Tidak ada
					$simpanPeminjaman = [
						'kode_peminjaman'=>$kode_transaksi,
						'kelas'=>$kelas,
						'id_siswa'=>$id_siswa,
						'tgl_peminjaman'=>$tgl_peminjaman,
						'tgl_pengembalian'=>$tgl_pengembalian,
						'denda'=>$denda,
						'admin'=>1,
						'jumlah_dipinjam'=>0,
						'status_pengembalian'=>'proses',
						'telat'=>$telat
					];
					// $prosesSimpanPeminjaman = 1;
					$prosesSimpanPeminjaman = $this->M_menu->tambahdata('peminjaman', $simpanPeminjaman);
					if ($prosesSimpanPeminjaman==0) {
						$data = 'gagalSimpanPeminjaman';
						echo json_encode($data);
						die();
					}
				}

				$cekKodeBuku = $this->M_menu->tabelsql("SELECT kode_buku  FROM v_pinjam WHERE kode_buku='$kode_buku' AND status_pengembalian='proses'");
				if($cekKodeBuku!==0){
					$data = 'bukuSudahAda';
					echo json_encode($data);
					die();
				}
				$id_uniq_detail = mt_rand();
				$cekKodePeminjamanDetail = $this->M_menu->tabelsql("SELECT kode_peminjaman_detail FROM peminjaman_detail WHERE kode_peminjaman_detail='$id_uniq_detail'");
				if ($cekKodePeminjamanDetail!==0) {
					$id_uniq_detail = mt_rand();
				}
				$simpanPeminjamanDetail = [
					'kode_peminjaman_detail'=>$id_uniq_detail,
					'kode_peminjaman'=>$kode_transaksi,
					'kode_buku'=>$kode_buku
				];
				$prosesSimpanPeminjamanDetail = $this->M_menu->tambahdata('peminjaman_detail',$simpanPeminjamanDetail);
				if ($prosesSimpanPeminjamanDetail==0) {
					$data = 'gagalSimpanPeminjamanDetail';
					echo json_encode($data);
					die();
				}else{
					$hitungPeminjamaDetail = $this->M_menu->tabelsql("SELECT count(kode_peminjaman_detail) as jml FROM peminjaman_detail WHERE kode_peminjaman='$kode_transaksi'");
					$jml = $hitungPeminjamaDetail[0]->jml;
					$editPeminjama = [
						'jumlah_dipinjam' => $jml+1
					];
					$this->M_menu->editdata('peminjaman', $editPeminjama, 'kode_peminjaman', $kode_transaksi);
				}
			}
		}
		$data = 'sukses';
		echo json_encode($data);
	}

	

	public function apiPeminjaman()
	{
		$dtJSON = '{"data": [xxx]}';
		$dtisi = '';
		$no = 1;

		$sqlpeminjaman_detail = "SELECT v_pinjam.*,buku.penerbit,buku.pengarang,buku.jenis_buku FROM v_pinjam INNER JOIN buku ON v_pinjam.kode_buku=buku.kode_buku WHERE v_pinjam.status_pengembalian='proses'";
		$dtpeminjaman_detail = $this->M_menu->tabelsql($sqlpeminjaman_detail);
		if ($dtpeminjaman_detail) {
			foreach ($dtpeminjaman_detail as $h) {
				$kode_transaksi = $h->kode_peminjaman_detail;
				$judul = $h->judul;
				$penerbit = $h->penerbit;
				$pengarang = $h->pengarang;
				$jenis = $h->jenis_buku;

				$dtisi .= '{"no":"' . $no . '","kode_peminjaman_detail":"' . $kode_transaksi . '","judul":"' . $judul . '","penerbit":"' . $penerbit . '","pengarang":"' . $pengarang . '","jenis":"' . $jenis . '","aksi":"' . $kode_transaksi . '"},';

				$no++;
			}
			// meletakkan di json
			$dtisifix = rtrim($dtisi, ",");
			$data = str_replace("xxx", $dtisifix, $dtJSON);

			echo $data;
		} else {
			echo '{"data":[]}';
		}
	}

	public function resetPeminjamanProses()
	{
		$kode_transaksi = $this->input->post('kode_transaksi');
		$kelas = $this->input->post('kelas');
		$id_siswa = $this->input->post('id_siswa');
		$tgl_peminjaman = $this->input->post('tgl_peminjaman');
		$tgl_pengembalian = $this->input->post('tgl_pengembalian');

		$cekpeminjaman = $this->M_menu->tabelsql("SELECT kelas  FROM v_pinjam WHERE status_pengembalian='proses'");
		if ($cekpeminjaman) {
			$dari = [
				'kode_peminjaman' => $kode_transaksi
			];
			$hapusPeminjaman = $this->M_menu->hapusdata("peminjaman",$dari);
			if ($hapusPeminjaman) {
				$dari = [
					'kode_peminjaman' => $kode_transaksi
				];
				$hapusPeminjaman = $this->M_menu->hapusdata("peminjaman_detail",$dari);
				if ($hapusPeminjaman) {
					$data = '1';
				}else{
					$data = 'peminjamanDetailGagalDiHapus';
				}
			}else{
				$data = 'peminjamanGagalDiHapus';
			}
		}else{
			$data='dataMasihKosong';
		}
		echo json_encode($data);
	}

	public function prosesPeminjaman()
	{
		$kode_transaksi = $this->input->post('kode_transaksi');

		$cekpeminjaman = $this->M_menu->tabelsql("SELECT kelas  FROM v_pinjam WHERE status_pengembalian='proses'");
		if ($cekpeminjaman) {
			$dari = [
				'status_pengembalian' => 'dipinjam'
			];
			$editPeminjaman = $this->M_menu->editdata("peminjaman",$dari,'kode_peminjaman',$kode_transaksi);
			if ($editPeminjaman) {
				$data = '1';
			}else{
				$data = 'peminjamanGagalDiHapus';
			}
		}else{
			$data='dataMasihKosong';
		}
		echo json_encode($data);
	}
	
}

/* End of file php */
/* Location: ./application/controllers/Menu.php */