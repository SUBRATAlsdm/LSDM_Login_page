<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    

    public function index() {
        $this->load->model('Data_model');
        $data['table_headers'] = $this->Data_model->get_table_headers();
        $limit=10;//limit///////////////////
        $data['max_page_for_student']=$this->Data_model->getRowCount($limit);
        $this->load->view('home', $data);
    }
    

    public function get_table_data($page = 1) {
        $this->load->model('Data_model');
        $limit = 10;//limit/////////////////
        $offset = ($page - 1) * $limit;

        // Log the SQL query
        //$this->output->enable_profiler(TRUE);
        
        $data['table_rows'] = $this->Data_model->get_table_data($limit, $offset);


        $this->load->view('table_partial', $data);
    }

}




