<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index() {
        $this->load->library('pagination');//to import the pagination libraries
        $this->load->model('student_model');//to import the student_model functionality in controller
        
        // Pagination Config
        $config['base_url'] = base_url('index.php/home/index');//
        $config['total_rows'] = $this->student_model->count_students();
        $config['per_page'] = 10;

        // Customize the pagination style
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['attributes'] = array('class' => 'page-link');
        $config['first_link'] = FALSE;
        $config['last_link'] = FALSE;
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '« Previous';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = 'Next »';
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close'] = '<span class="sr-only"></span></span></li>';

        $this->pagination->initialize($config);

        $limit = $config['per_page'];
        $offset = $this->uri->segment(3) ? $this->uri->segment(3) : 0;

        $data['students'] = $this->student_model->get_students($limit, $offset);
        $data['username'] = $this->session->userdata('username');
        $this->load->view('home', $data);
		
    }
}

	
