<?php
class Admin_controller extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->output->enable_profiler(TRUE);
        $this->load->library('session');
        if (!$this->session->userdata('user_name') AND (((($this->router->fetch_class() == 'auth') AND !in_array($this->router->fetch_method(), array('login', 'logout')) ) OR ($this->router->fetch_class() != 'auth') ) ) ) {
            //var_dump($this->session->userdata('user_name'));
            redirect('admin/auth/login');
        }
    }
}

?>