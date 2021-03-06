<?php 

	function cekAuth()
	{
		$ci = get_instance();
		if (!$ci->session->userdata('username')) {
			redirect('auth');}
	}
	function cekRole()
	{
		$ci = get_instance();
		if ($ci->session->userdata('role_id')=='2') {
			redirect('menu');
		}
	}	

 ?>