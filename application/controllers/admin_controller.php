<?php
class Admin_controller extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->library('session');
    }
    function index(){
        if (!$this->session->userdata('user_name')) {
            redirect('admin/auth/login');
        }
    }
}

?>