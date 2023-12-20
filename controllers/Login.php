<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

   public function __construct() {
      parent::__construct();
      $this->load->model('login_model'); // Load the login_model
   }

   public function index() {
      $this->load->view('login');
   }

   public function process_login() {
      $username = $this->input->post('username');
      $password = $this->input->post('password');

      // Call the login model to check user credentials
      $result = $this->login_model->validate_user($username, $password);

      if ($result) {
         // Successful login
		 $this->session->set_userdata('username', $username);
         redirect('home'); // Change 'dashboard' to your actual dashboard page
      } else {
         // Failed login
         $this->session->set_flashdata('error_message', 'Invalid username or password');
         redirect('login');
      }
   }
}
