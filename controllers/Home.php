<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Data_model'); // Load the login_model
     }

public function index() {
    $data['username'] = $this->session->userdata('username');
    $data['table_headers'] = $this->Data_model->get_table_headers();
    $this->load->view('home', $data);
}
public function get_table_data($page = 1) {
    $this->load->model('Data_model');
    $limit = 10;
    $offset = ($page - 1) * $limit;

    // Log the SQL query
    //$this->output->enable_profiler(TRUE);
    
    $data['table_rows'] = $this->Data_model->get_table_data($limit, $offset);

    $this->load->view('table_partial', $data);
}

}




