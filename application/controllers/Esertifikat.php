<?php
defined('BASEPATH') or exit('No direct script access allowed');
/**
 * @package  : Website e-sertifikat UNWAHA
 * @author   : mohammad zuz ubaidillah <zuzubaidillah@gmail.com>
 * @since    : 2019
 * @license  : 
 */
class Esertifikat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $data['tampil']    = $this->Apps->tampil();
        $this->load->view('app/part/header', $data, true);
    }
    public function data($id_acara)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat',
                'esertifikat' => TRUE
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/acara?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                redirect('app/acara?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }

            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK
            if ($row->id_acara != $id_acara) {
                // $this->session->set_flashdata('gagal', 'URL Terjadi Kesalahan');
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            // UPDATE DATA ACARA AGAR NOTIF JADI HILANG
            $data_notif = array('notif'  => '1', 'status' => '1', 'sukses' => '0');
            $this->Acara_Model->edit_proses($data_notif, $id_acara);

            $data['cek_template_bk'] = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Belakang' AND tem.id_acara=" . $id_acara);
            $data['cek_template_dp'] = $this->E_sertifikat->tb_variabel('gambar, ukuran', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Depan' AND tem.id_acara=" . $id_acara);
            $data['acaras']       = $this->Peserta_Model->acara_dari($id_acara, "1", "", "AND ac.notif='1' AND ac.sukses!='2' ");

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            $this->load->view('app/views/esertifikat/tampil');
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }
    public function proses_dp()
    {
        if ($this->Apps->Apps_id()) {
            $id_acara    = $this->input->post('id_acara');
            $txttemplate = $this->input->post('txttemplate');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            $gambar = $_FILES['userfile']['name'];
            if ($gambar == '') {
                $dt = array('lebar' => $txtlebar);
                $this->Acara_Model->edit($dt, $id_acara);
            } else {
                //config upload
                $config['upload_path']   = realpath('resources/upload/');
                $config['allowed_types'] = 'jpg|jpeg|png';
                $config['file_name']     = 'dp' . $id_acara;
                $config['max_size']      = 5000;
                $config['max_width']     = 5000;
                $config['max_height']    = 5000;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);

                // var_dump($config['allowed_types']);die();
                // if ($config['allowed_types']!='png') {
                //     redirect('app/esertifikat/data/'.$id_acara.'?source=gambarHaruspng&utf8=x','refresh');
                //     exit;
                // }

                $ekstensigambar = explode('.', $gambar);
                $ekstensigambar = strtolower(end($ekstensigambar));
                $nama_type      = $ekstensigambar;

                // mengetahui jika bagron sudah diisi maka di unlink
                $dd = $this->Acara_Model->tb_acara('WHERE id_acara=' . $id_acara);
                foreach ($dd as $row);

                if ($row->template != '') {
                    unlink(realpath('resources/upload/' . $row->template));
                    $dt = array('template' => $config['file_name'] . '.' . $nama_type);
                    $this->Acara_Model->edit($dt, $id_acara);
                } else {
                    $dt = array('template' => $config['file_name'] . '.' . $nama_type);
                    $this->Acara_Model->edit($dt, $id_acara);
                }
                if (!$this->upload->do_upload('userfile')) {
                    $this->upload->display_errors();
                    redirect('app/esertifikat/data/' . $id_acara . '?source=gambarGagaldiUnggah&utf8=x', 'refresh');
                }
            }
            redirect('app/esertifikat/data/' . $id_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }
    public function proses_bk()
    {
        if ($this->Apps->Apps_id()) {
            $id_acara    = $this->input->post('id_acara2');
            $txttemplate = $this->input->post('txttemplate2');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            $gambar = $_FILES['userfile2']['name'];
            if ($gambar == '') {
            } else {
                //config upload
                $config['upload_path']   = realpath('resources/upload/');
                $config['allowed_types'] = 'jpg|jpeg|png';
                $config['file_name']     = 'bk' . $id_acara;
                $config['max_size']      = 5000;
                $config['max_width']     = 5000;
                $config['max_height']    = 5000;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);

                $ekstensigambar = explode('.', $gambar);
                $ekstensigambar = strtolower(end($ekstensigambar));
                $nama_type      = $ekstensigambar;

                // mengetahui jika bagron sudah diisi maka di unlink
                $dd = $this->Acara_Model->tb_acara('WHERE id_acara=' . $id_acara);
                foreach ($dd as $row);

                if ($row->template2 != '') {
                    unlink(realpath('resources/upload/' . $row->template2));
                    $dt = array('template2' => $config['file_name'] . '.' . $nama_type);
                    $this->Acara_Model->edit($dt, $id_acara);
                } else {
                    $dt = array('template2' => $config['file_name'] . '.' . $nama_type);
                    $this->Acara_Model->edit($dt, $id_acara);
                }
                if (!$this->upload->do_upload('userfile2')) {
                    $this->upload->display_errors();
                    redirect('app/esertifikat/data/' . $id_acara . '?source=gambarGagaldiUnggah&utf8=x', 'refresh');
                }
            }
            redirect('app/esertifikat/data/' . $id_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function depan($id_acara)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat'
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                // $this->session->set_flashdata('gagal', 'Acara Belum di Setujui');
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
            if ($row->id_acara != $id_acara) {
                // $this->session->set_flashdata('gagal', 'URL Terjadi Kesalahan');
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            // $data['fakultass']      = $this->Peserta_Model->get_fakultas('fakultas');
            // $data['acaras']         = $this->Peserta_Model->acara_dari($id_acara,"1","","AND ac.notif='1' AND ac.sukses!='2'");

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            $this->load->view('app/views/esertifikat/depan');
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function belakang($id_acara)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat'
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
            if ($row->id_acara != $id_acara) {
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            $this->load->view('app/views/esertifikat/belakang');
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function depan_detail($id_acara, $id_desain)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat A4'
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                // $this->session->set_flashdata('gagal', 'Acara Belum di Setujui');
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
            if ($row->id_acara != $id_acara) {
                // $this->session->set_flashdata('gagal', 'URL Terjadi Kesalahan');
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            // $data['fakultass']      = $this->Peserta_Model->get_fakultas('fakultas');
            // $data['acaras']         = $this->Peserta_Model->acara_dari($id_acara,"1","","AND ac.notif='1' AND ac.sukses!='2'");

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            if ($id_desain == '1') {
                $this->load->view('app/views/esertifikat/depan_detail_no1');
            } elseif ($id_desain == '2') {
                $this->load->view('app/views/esertifikat/depan_detail_no2');
            } else {
                redirect('app/login', 'refresh');
            }
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function depan_a5_detail($id_acara, $id_desain)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat A5'
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
            if ($row->id_acara != $id_acara) {
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            if ($id_desain == '111') {
                $this->load->view('app/views/esertifikat/depan_a5_no1');
            } elseif ($id_desain == '222') {
                $this->load->view('app/views/esertifikat/depan_a5_no2');
            } else {
                redirect('app/login', 'refresh');
            }
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function belakang_a5_detail($id_acara, $id_desain)
    {
        if ($this->Apps->Apps_id()) {
            $data = array(
                'title'       => 'Desain e-Sertifikat A5'
            );
            $id_user  = $this->session->userdata('id_user');

            // cek url id membuat hak akses
            $cekurl  = $this->Peserta_Model->cek_url_operator($id_user, $id_acara);
            if ($cekurl == 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=idurltidakdiketahui&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
            $acara   = $this->Acara_Model->tbacara($id_acara);
            foreach ($acara as $row);
            $notif   = $row->notif;
            $status  = $row->status;
            $dihapus = $row->dihapus;
            if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
                redirect('app/esertifikat/data/' . $id_acara . '?source=error$ket=AcaraBelumdiSetujui&utf8=x', 'refresh');
            }
            $tgl_acara = $row->tgl_acara;
            if ($tgl_acara < date('Y-m-d')) {
                redirect('app/acara?source=error$ket=AcaraSudahSelesai&utf8=x', 'refresh');
            }
            // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
            if ($row->id_acara != $id_acara) {
                redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
            }

            $this->load->view('app/part/header', $data);
            $this->load->view('app/part/sidebar');
            if ($id_desain == 'bkno1') {
                $this->load->view('app/views/esertifikat/belakang_a5_no1');
            } else {
                redirect('app/login', 'refresh');
            }
            $this->load->view('app/part/footer');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    // A4
    public function proses_dpdetail_1()
    {
        if ($this->Apps->Apps_id()) {
            $txtid_acara  = $this->input->post('txtid_acara');
            $txtid_desain = $this->input->post('txtid_desain');
            $txtedit      = $this->input->post('txtedit');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            if ($txtid_acara == '' or $txtid_desain == '') {
                redirect('app/login', 'refresh');
            }

            // Pengecekan apakah sudah pernah di simpan?
            // $qr_template = $this->E_sertifikat->tb_variabel('id_template,gambar,id_acara,bagian','template',"WHERE id_acara='".$txtid_acara."' AND gambar='".$txtid_desain."'");
            // foreach ($qr_template as $key);
            // Pengecekan apakah sudah pernah di simpan?
            // if ($key->bagian=='Depan' AND $key->id_acara==$txtid_acara AND $key->gambar==$txtid_desain) {

            if ($txtedit != '') {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara . " AND gambar=1");
            }

            // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
            $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Depan' AND tem.id_acara=" . $txtid_acara);
            if ($cek_template_dp != FALSE) {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara);
            }

            for ($i = 1; $i <= 4; $i++) {
                $dt = array(
                    'id_acara' => $txtid_acara,
                    'gambar'   => $txtid_desain,
                    'ukuran'   => 'A4',
                    'bagian'   => 'Depan',
                    'label'    => $this->input->post('txtd' . $i),
                    'hasil'    => $this->input->post('txth' . $i)
                );
                $this->E_sertifikat->tambah($dt);
            }
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }
    public function proses_dpdetail_2()
    {
        if ($this->Apps->Apps_id()) {
            $txtid_acara  = $this->input->post('txtid_acara');
            $txtedit      = $this->input->post('txtedit');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            if ($txtid_acara == '') {
                redirect('app/login', 'refresh');
            }

            // Pengecekan apakah sudah pernah di simpan?
            // $qr_template = $this->E_sertifikat->tb_variabel('id_template,gambar,id_acara,bagian','template',"WHERE id_acara='".$txtid_acara."' AND gambar='".$txtid_desain."'");
            // foreach ($qr_template as $key);
            // Pengecekan apakah sudah pernah di simpan?
            // if ($key->bagian=='Depan' AND $key->id_acara==$txtid_acara AND $key->gambar==$txtid_desain) {
            if ($txtedit != '') {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara . " AND gambar=2");
            }

            // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
            $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Depan' AND tem.id_acara=" . $txtid_acara);
            if ($cek_template_dp != FALSE) {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara);
            }

            for ($i = 1; $i <= 3; $i++) {
                $dt = array(
                    'id_acara' => $txtid_acara,
                    'gambar'   => 2,
                    'ukuran'   => 'A4',
                    'bagian'   => 'Depan',
                    'label'    => $this->input->post('txtd' . $i),
                    'hasil'    => $this->input->post('txth' . $i)
                );
                $this->E_sertifikat->tambah($dt);
            }
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }


    // A5
    public function proses_dp_A5_1()
    {
        if ($this->Apps->Apps_id()) {
            $txtid_acara  = $this->input->post('txtid_acara');
            $txtedit      = $this->input->post('txtedit');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            if ($txtid_acara == '') {
                redirect('app/login', 'refresh');
            }

            // Pengecekan apakah sudah pernah di simpan?
            // $qr_template = $this->E_sertifikat->tb_variabel('id_template,gambar,id_acara,bagian','template',"WHERE id_acara='".$txtid_acara."' AND gambar='".$txtid_desain."'");
            // foreach ($qr_template as $key);

            // Pengecekan apakah sudah pernah di simpan?
            // if ($key->bagian=='Depan' AND $key->id_acara==$txtid_acara AND $key->gambar==$txtid_desain) {

            if ($txtedit != '') {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara . " AND gambar=111");
            }

            // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
            $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Depan' AND tem.id_acara=" . $txtid_acara);
            if ($cek_template_dp != FALSE) {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara);
            }

            for ($i = 1; $i <= 4; $i++) {
                $dt = array(
                    'id_acara' => $txtid_acara,
                    'gambar'   => '111',
                    'ukuran'   => 'A5',
                    'bagian'   => 'Depan',
                    'label'    => $this->input->post('txtd' . $i),
                    'hasil'    => $this->input->post('txth' . $i)
                );
                $this->E_sertifikat->tambah($dt);
            }
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    public function proses_bk_A5_1()
    {
        if ($this->Apps->Apps_id()) {
            $txtid_acara  = $this->input->post('txtid_acara');
            $txtedit      = $this->input->post('txtedit');

            //CEK KONDISI LEVEL YANG SEDANG LOGIN
            if ($this->session->userdata('level') == 'Teknisi') {
                //nilai == 1 maka bisa tampil // jika 0 makaa
                redirect('app/login', 'refresh');
            }

            if ($txtid_acara == '') {
                redirect('app/login', 'refresh');
            }

            if ($txtedit != '') {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Depan' AND id_acara=" . $txtid_acara . " AND gambar='bkno1'");
            }

            // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
            $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Belakang' AND tem.id_acara=" . $txtid_acara);
            if ($cek_template_dp != FALSE) {
                $this->E_sertifikat->hapus_dp("WHERE bagian='Belakang' AND id_acara=" . $txtid_acara);
            }

            for ($i = 1; $i <= 2; $i++) {
                $dt = array(
                    'id_acara' => $txtid_acara,
                    'gambar'   => 'bkno1',
                    'ukuran'   => 'A5',
                    'bagian'   => 'Belakang',
                    'label'    => $this->input->post('txtd' . $i),
                    'hasil'    => $this->input->post('txth' . $i)
                );
                $this->E_sertifikat->tambah($dt);
            }
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/login?source=error&utf8=x', 'refresh');
        }
    }

    // public function lihat_sampel($id_acara)
    // {
    //     $data['title'] = 'Hasil Sampel';
    //     $data['dt'] = $this->Acara_Model->tb_acara('WHERE id_acara='.$id_acara);
    //     //$= new mPDF($Mode, $Format, $BesarFont, $JenisFont, $MarginKiri, $MarginKanan, $MarginAtas, $MarginBawah, $MarginHeader, $MarginFooter, $OrientasiKertas);
    //     // $mpdf  = new mPDF('utf-8','A4-L', '', '', '15', '15', '25', '15', '', '', 'L');
    //     $dt = [
    //         'mode'              => '',
    //         'format'            => 'A4',
    //         'default_font_size' => 0,
    //         'default_font'      => '',
    //         'margin_left'       => 0,
    //         'margin_right'      => 0,
    //         'margin_top'        => 0,
    //         'margin_bottom'     => 0,
    //         'margin_header'     => 0,
    //         'margin_footer'     => 0,
    //         'orientation'       => 'L',
    //     ];

    //     $mpdf  = new \Mpdf\Mpdf($dt);
    //     $hasil = $this->load->view('app/views/esertifikat/hasil_sampel',$data, true);
    //     $mpdf->WriteHTML($hasil);
    //     $mpdf->Output("sampel E-sertifikat.pdf","I");
    // }
    public function html_depan()
    {
        $txtuk       = $this->input->post('txtuk');
        $txtnilai    = $this->input->post('txtnilai');
        $txtid_acara = $this->input->post('txtid_acara');

        if ($txtuk == 'A4') {
            $html = '
            <div class="panel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <p align="center">template 1</p>
                            <a href="' . base_url() . 'app/esertifikat/depan_detail/' . $txtid_acara . '/1" title="Pilih Desain ini?">
                                <div class="card-header cover overlay-hover overlay">
                                    <img class="cover-image overlay-figure overlay-spin" src="' . base_url() . 'resources/upload/1dp_custom_ttd.png" alt="...">
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6">
                            <p align="center">Template 2</p>
                            <a href="' . base_url() . 'app/esertifikat/depan_detail/' . $txtid_acara . '/2" title="Pilih Desain ini?">
                                <div class="card-header cover overlay-hover overlay">
                                    <img class="cover-image overlay-figure overlay-spin" src="' . base_url() . 'resources/upload/2dp_custom_ttd.png" alt="...">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>';
        } else {
            $html = '
            <div class="panel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <p align="center">Template 1</p>
                            <a href="' . base_url() . 'app/esertifikat/depan_a5_detail/' . $txtid_acara . '/111" title="Pilih Desain ini?">
                                <div class="card-header cover overlay-hover overlay">
                                    <img class="cover-image overlay-figure overlay-spin" src="' . base_url() . 'resources/upload/111dp_custom_ttd.png" alt="...">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>';
        }
        // if ($txtnilai=='Y') {
        //     $txtnilai_hasil = 'Mempunyai Nilai';
        // }else{
        //     $txtnilai_hasil = 'Tidak Ada Nilai';   
        // }
        // $html_nilai .= '
        //             <div class="form-group">
        //               <h4 class="example-title">Acara?</h4>
        //               <input type="text" class="form-control round" readonly name="txtnilai2" id="txtnilai2" value="'.$txtnilai_hasil.'">
        //             </div>
        //             ';

        $data = array(
            'template'   => $html
        );
        echo json_encode($data);
    }

    public function hapus_dp($txtid_acara)
    {
        //CEK KONDISI LEVEL YANG SEDANG LOGIN
        if ($this->session->userdata('level') == 'Teknisi') {
            //nilai == 1 maka bisa tampil // jika 0 makaa
            redirect('app/login', 'refresh');
        }

        // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
        $acara   = $this->Acara_Model->tbacara($txtid_acara);
        foreach ($acara as $row);
        $notif   = $row->notif;
        $status  = $row->status;
        $dihapus = $row->dihapus;
        if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=error$ket=acrtidakpunyatemplate&utf8=x', 'refresh');
        }

        // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
        if ($row->id_acara != $txtid_acara) {
            redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
        }

        if ($txtid_acara == '') {
            redirect('app/login', 'refresh');
        }

        // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
        $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Depan' AND tem.id_acara=" . $txtid_acara);
        if ($cek_template_dp != FALSE) {
            $hapusgambar = $this->E_sertifikat->tb_variabel('template,template2', 'acara', 'WHERE id_acara=' . $txtid_acara);
            foreach ($hapusgambar as $d);
            if ($d->template != '') {
                unlink('resources/upload/' . $d->template);
            }
            if ($d->template2 != '') {
                unlink('resources/upload/' . $d->template2);
            }
            $dt = array('template' => '', 'template2' => '');
            $this->Acara_Model->edit($dt, $txtid_acara);
            $this->E_sertifikat->hapus_dp("WHERE id_acara=" . $txtid_acara);
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=error&ket=hapustemplategagal', 'refresh');
        }
    }


    public function hapus_bk($txtid_acara)
    {
        //CEK KONDISI LEVEL YANG SEDANG LOGIN
        if ($this->session->userdata('level') == 'Teknisi') {
            redirect('app/login', 'refresh');
        }

        // PENGECEKAN JIKA BELUM DI ACC AKAN DIREDIREC KE PENGJUAN
        $acara   = $this->Acara_Model->tbacara($txtid_acara);
        foreach ($acara as $row);
        $notif   = $row->notif;
        $status  = $row->status;
        $dihapus = $row->dihapus;
        if ($status == 2 or $notif == 2 or $status == 0 and $notif == 1 and $dihapus != 0) {
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=error$ket=acrtidakpunyatemplate&utf8=x', 'refresh');
        }

        // PENGECEKAN JIKA ID ACARA DI URL DI KRITIK DAN TERJADI TIDAK SAMA YANG ADA DI DATABASES
        if ($row->id_acara != $txtid_acara) {
            redirect('app/pengajuan?source=error$ket=URLTerjadiKesalahan&utf8=x', 'refresh');
        }

        if ($txtid_acara == '') {
            redirect('app/login', 'refresh');
        }

        // CEK SUDAH PUNYA TEMPLATE, SEBELUMNYA?
        $cek_template_dp = $this->E_sertifikat->tb_variabel('gambar', 'acara AS ac INNER JOIN template AS tem ON ac.id_acara=tem.id_acara', "WHERE tem.bagian='Belakang' AND tem.id_acara=" . $txtid_acara);
        if ($cek_template_dp != FALSE) {
            $hapusgambar = $this->E_sertifikat->tb_variabel('template2', 'acara', 'WHERE id_acara=' . $txtid_acara);
            foreach ($hapusgambar as $d);
            unlink('resources/upload/' . $d->template2);
            $dt = array('template2' => '');
            $this->Acara_Model->edit($dt, $txtid_acara);
            $this->E_sertifikat->hapus_dp("WHERE bagian='Belakang' AND id_acara=" . $txtid_acara);
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=sukses', 'refresh');
        } else {
            redirect('app/esertifikat/data/' . $txtid_acara . '?source=error&ket=hapustemplategagal', 'refresh');
        }
    }
}
