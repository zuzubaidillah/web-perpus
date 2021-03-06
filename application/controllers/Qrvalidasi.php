<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Qrvalidasi extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		date_default_timezone_set("ASIA/JAKARTA");
		$tgl_now                = date('Y-m-d'); // pendefinisian tanggal awal
		$tgl_min30              = date('Y-m-d', strtotime('-30 days', strtotime($tgl_now))); //operasi pengurangan tanggal sebanyak 30 hari
		$a1                     = 'WHERE ac.status=1';
		$b1                     = "AND ac.notif=1 AND ac.sukses!=2 AND ac.dihapus='0' AND ac.tampilkan='Y' AND ac.tgl_acara > '$tgl_min30'";
		$data['tampil']         = $this->Apps->tampil();
		$data['tgl_acara_grup'] = $this->Mweb->tgl_acara_grup($a1, $b1);
		$this->load->view('web/part/header', $data, true);
	}
	public function index()
	{
		$data = array('qrvalidasi' => true);
		$data['title'] = 'QR Validasi';

		$this->load->view('web/part/header', $data);
		$this->load->view('web/views/scan_validasi');
		$this->load->view('web/part/footer');
	}
	// public function cek_qrcode()
	// {
	// 	$data = array('cek_qrcode' => true);

	// 	$data['title'] = 'Hasil QR-Code';

	// 	$qrcode        = $this->input->post('qrcode');
	// 	$a1            = 'WHERE';
	// 	$b1            = " pe.id_peserta='$qrcode'";

	// 	$data['hasil_cek_qrcode'] = $this->Mweb->cek_qrcode_acpedc($a1,$b1);

	// 	$this->load->view('web/part/header',$data);
	// 	$this->load->view('web/views/cek_qrcode');
	// 	$this->load->view('web/part/footer');
	// }
	public function hasil_scan()
	{
		$h     = base64_decode(base64_decode(base64_decode($this->input->post('qrcode'))));
		$ganti = explode("_", $h);
		if ($ganti[0] != '') {
			$id_peserta = $ganti[0];
			$id_acara   = $ganti[1];
			$a1         = 'WHERE';
			$b1         = " pe.id_peserta=$id_peserta AND pe.id_acara=$id_acara";
		} else {
			$a1         = 'WHERE';
			$b1         = " pe.id_peserta='qw12' AND pe.id_acara='a2'";
		}

		$data = $this->Mweb->cek_qrcode_acpedc($a1, $b1);
		// $this->load->library('ciqrcode');
		// $qrc = QRcode::png(base64_encode(base64_encode(base64_encode($key->id_peserta.'_'.$key->id_acara))),'image.png','H',4,4);
		foreach ($data as $key);
		$data = array(
			'idpe'       => $key->id_peserta . '_' . $key->id_acara,
			'jml'        => $key->jml,
			'id_acara'   => $key->id_acara,
			'id_peserta' => $key->id_peserta,
			'nmac'       => strtoupper($key->nama_acara),
			'tglac'      => $key->tgl_acara,
			'tgl_lahir'  => $key->tgl_lahir,
			'ktpe'       => $key->nama_pr,
			'nmpe'       => strtoupper($key->nama_pe)
		);
		echo json_encode($data);
	}
	public function tampil_tabel()
	{
		$data       = $this->Mweb->tampil_tabel2($this->input->post('idpe'), $this->input->post('idac'));
		echo json_encode($data);
	}
	public function tampil_itemnilai()
	{
		$data       = $this->Mweb->tampil_tabel3($this->input->post('idac'));
		echo json_encode($data);
	}
}
