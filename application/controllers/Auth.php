<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		
	}
	public function index()
	{
		$this->form_validation->set_rules('username', 'Username', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');

		if ($this->form_validation->run() == false) {
			$data['title'] = 'Login Page';	
			$this->load->view('template/auth_header');
			$this->load->view('auth/login');
		}else {
			//validasinya sukses
			$this->_login();
		}

	} 

	private function _login()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$user = $this->db->get_where('user', ['username' => $username])->row_array();

		//usernya ada			
		if ($user) {
			//jika user aktif
			if ($user['status'] == 1) {
				//cek pasword
				if ($password==$user['password']) {
					$data = [
						'username' => $user['username'],
						'role_id' => $user['role_id']
					];
					$save_session = $this->session->set_userdata($data);
					redirect('menu');
				}
				else {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong Password!</div>');
					redirect('auth');
				}
			}else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This User Has Not Been Actived!</div>');
				redirect('auth');
			}
		}else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This User Not Registed!</div>');
				redirect('auth');
		}
	}	
	public function logout()
	{
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('status');
		$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">You Have Been Logged Out!</div>');
					redirect('auth');
	}


}

/* End of file Auth.php */
/* Location: ./application/controllers/Auth.php */