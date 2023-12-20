<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$data['username'] = $this->session->userdata('username');
        $this->load->view('home', $data);
	}
	
}
