<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_menu extends CI_Model
{


	function getTransaksi()
	{
		$query = "SELECT * FROM peminjaman JOIN data_anggota ON peminjaman.nis = data_anggota.nis JOIN data_buku ON peminjaman.kode_buku = data_buku.kode_buku ";
		return $this->db->query($query);
	}
	function detailTransaksi($kode_peminjaman)
	{
		$query = "SELECT * FROM peminjaman JOIN data_anggota ON peminjaman.nis = data_anggota.nis JOIN data_buku ON peminjaman.kode_buku = data_buku.kode_buku WHERE peminjaman.kode_peminjaman = $kode_peminjaman";
		return $this->db->query($query)->row();
	}
	function ambildatasiswa($nis)
	{
		$query = "SELECT * FROM `data_anggota` WHERE nis = $nis";
		return $this->db->query($query);
	}
	function ambildatabuku($kode_buku)
	{
		$query = "SELECT * FROM `data_buku` WHERE kode_buku = $kode_buku";
		return $this->db->query($query);
	}
	function dikembalikan($tgl_kembali, $kode_peminjaman)
	{
		$query = "UPDATE `peminjaman` SET `tgl_pengembalian`= $tgl_kembali, `status_pengembalian` = 1 WHERE kode_peminjaman = $kode_peminjaman";
		return $this->db->query($query);
	}
	function getDatasiswa()
	{
		$this->db->select('*');
		$this->db->from('data_anggota');
		return $this->db->get();
	}
	function SaveAnggota($data)
	{
		$this->db->insert('data_anggota', $data);
	}
	function editAnggota($id)
	{
		$query = $this->db->where('id_siswa', $id)->get('data_anggota');
		return $query->row();
	}
	function updateAnggota($data, $id_siswa)
	{
		$this->db->where('id_siswa', $id_siswa);
		$this->db->update('data_anggota', $data);
		return TRUE;
	}
	function getIdsiswa($id_siswa)
	{
		return $this->db->get_where('data_anggota', ['id_siswa' => $id_siswa])->row();
	}
	function hapusAnggota($id_siswa)
	{
		$this->db->where('id_siswa', $id_siswa);
		$this->db->delete('data_anggota');
		return TRUE;
	}



	// ================== BUKU
	function getDatabuku()
	{
		$this->db->select('*');
		$this->db->order_by('pengarang','ASC');
		$this->db->order_by('penerbit','ASC');
		$this->db->from('buku');
		return $this->db->get();
	}
	function savebuku($data)
	{
		$this->db->insert('buku', $data);
	}
	function editBuku($id)
	{
		$query = $this->db->where('kode_buku', $id)->get('buku');
		return $query->row();
	}
	function updateBuku($data, $id_buku)
	{
		$this->db->where('kode_buku', $id_buku);
		$this->db->update('buku', $data);
		return TRUE;
	}
	function getIdbuku($id_buku)
	{
		return $this->db->get_where('buku', ['kode_buku' => $id_buku])->row();
	}
	function hapusBuku($id_buku)
	{
		$this->db->where('kode_buku', $id_buku);
		$this->db->delete('buku');
		return TRUE;
	}




	// ==================== ADMIN
	function getDataadmin()
	{
		return $this->db->get_where('user', ['role_id' => '2']);
	}
	function saveAdmin($data)
	{
		$this->db->insert('user', $data);
	}
	function editAdmin($id)
	{
		return $this->db->get_where('user', ['id' => $id,])->row();
	}
	function updateAdmin($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
		return TRUE;
	}
	function getIdadmin($id)
	{
		return $this->db->get_where('user', ['id' => $id])->row();
	}
	function hapusAdmin($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user');
		return TRUE;
	}


	
	function tabelsql($sql)
	{
		$q = $this->db->query($sql);
		if ($q->num_rows()==0) {
			return 0;
		}else{
			return $q->result();
		}
	}
}

/* End of file M_menu.php */
/* Location: ./application/models/M_menu.php */