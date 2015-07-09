<?php
include_once(APPPATH.'controllers/admin_controller.php');
class Auth extends Admin_controller {
    function __construct () {
        parent::__construct();
        $this->load->model('auth_model', 'auth');
        $this->load->library('session');
    }
    function index(){
        $this->load->library('pagination');

        $total_rows              = $this->auth->count_auth();
        $per_page                = 5;
        $config['base_url']      = base_url().'admin/auth/index';
        $config['total_rows']    = $total_rows;
        $config['per_page']      = $per_page;
        $config['uri_segment']   = 4;
        $config['num_links']     = 5;
        $config['cur_tag_open']  = '<span>';
        $config['cur_tag_close'] = '</span>';
        $config['next_link']     = 'Next >>';
        $config['prev_link']     = '<< Prev';

        $this->pagination->initialize($config);

        $data['pagination'] = $this->pagination->create_links();
        $offset             = $this->uri->segment(4);
        $data['auth']       = $this->auth->get_auth($per_page, $offset);
        $data['css']        = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/posts.css" />';
        $data['content']    = 'list_auth';
        $this->load->view('template_admin', $data);
    }

    function login(){
        if ($this->session->userdata('user_name')) {
            redirect('admin/auth/index');
        }
        $this->load->library('form_validation');

        $this->form_validation->set_rules('user', 'Username', 'required');
        $this->form_validation->set_rules('pass', 'Password', 'required');

        if ($this->form_validation->run()) {
            $user  = $this->input->post('user');
            $pass  = md5($this->input->post('pass'));
            $check = $this->auth->check_login($user, $pass);
            if ($check > 0) {
                $userss = $this->auth->get_auth_session($user);
                $this->session->set_userdata($userss);
                redirect('admin/auth/index');
            } else {
                $data['user_error'] = 'Tài khoản hoặc mật khẩu không đúng';
            }
        } else {
            $data['user_error'] = 'Tài khoản hoặc mật khẩu không được để trống';
        }
        $data['css']     = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/login.css" />';
        $data['content'] = 'login';
        $this->load->view('template_admin', $data);
    }

    function logout(){
        $this->session->sess_destroy();
        redirect('admin/auth/login');
    }

    function add_auth(){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('post_user','Username','required|minlength[3]|is_unique[tbl_user.user_name]|callback_checkuser');
        $this->form_validation->set_rules('post_password','Password','required|min_length[3]');
        $this->form_validation->set_rules('post_passwordcf','Password','matches[post_password]');
        $this->form_validation->set_rules('post_featured');
        $this->form_validation->set_rules('post_email','Email','required|vaild_email');
        $this->form_validation->set_message('is_unique','Username da ton tai');
        $this->form_validation->set_message('matches','Mật khẩu ko giống nhau');
        $this->form_validation->set_message('required','Dữ liệu không được để trống');
        if ($this->form_validation->run()) {
            $data_insert = array(
                'user_name'     => $this->input->post('post_user'),
                'user_status'   => $this->input->post('post_featured'),
                'user_email'    =>$this->input->post('post_email'),
                'user_password' => md5($this->input->post('post_password'))
            );

            $this->auth->add_auth($data_insert);
            redirect('admin/auth/index');
        }

        $data['css']        = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/add-post.css" />';
        $data['content']    = 'add_auth';
        $this->load->view('template_admin', $data);
    }

    function edit_auth($id){
        $data['auth']    = $this->auth->get_auth_id($id);
        $data['css']     = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/edit-post.css" />';
        $this->load->library('form_validation');
        $this->form_validation->set_rules('post_user','Username','required|minlength[3]|callback_checkuser');
        $this->form_validation->set_rules('post_password','Password','required|min_length[3]');
        $this->form_validation->set_rules('post_passwordcf','Password','matches[post_password]');
        $this->form_validation->set_rules('post_featured');
        $this->form_validation->set_rules('post_email','Email','required|vaild_email');
        $this->form_validation->set_message('is_unique','Username da ton tai');
        $this->form_validation->set_message('matches','Mật khẩu ko giống nhau');
        $this->form_validation->set_message('required','Dữ liệu không được để trống');

        if ($this->form_validation->run()) {
            $user  = $this->input->post('post_user');
            $check = $this->auth->check_auth($user, $id);
            if ($check == 0) {
                $data_insert = array(
                'user_name'     => $this->input->post('post_user'),
                'user_status'   => $this->input->post('post_featured'),
                'user_email'    =>$this->input->post('post_email'),
                'user_password' => md5($this->input->post('post_password'))
                );
                $this->auth->add_auth($data_insert);
                redirect('admin/auth/index');
            } else {
                $data['user_err'] = 'User name đã tồn tại';
                $data['content'] = 'edit_auth';
                $this->load->view('template_admin', $data);
            }
        } else {
            $data['content'] = 'edit_auth';
            $this->load->view('template_admin', $data);
        }
    }

    function delete_auth($id){
        $this->auth->delete_auth($id);
        redirect('admin/auth/index');
    }

    function checkuser($user){
        if ($user == 'test') {
            $this->form_validation->set_message('checkuser', 'Username khong duoc la test');
            return false;
        } else {
            return true;
        }
    }
}

?>