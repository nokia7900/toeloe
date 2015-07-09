<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Category extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Category_model', 'category');
    }

    function index() {
        $this->load->library('pagination');
        $total_rows              = $this->category->count_category();
        $per_page                = 5;
        $config['base_url']      = base_url().'admin/category/index';
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
        $data['css']        = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/posts.css" />';
        $data['content']    = 'list_category';
        $data['category']   = $this->category->get_category($per_page, $offset);
        $this->load->view('template_admin', $data);
    }

    function add_category(){
        $data['css'] = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/add-post.css" />';
        $this->load->library('form_validation');
        $this->form_validation->set_rules('post_title', 'Post_title', 'required|minlength[3]|is_unique[category.cat_name]');
        $this->form_validation->set_rules('category');
        $this->form_validation->set_message('is_unique', 'Danh mục đã tồn tại');
        if ($this->form_validation->run()) {
            $data_insert = array(
                'cat_name'   => $this->input->post('post_title'),
                'cat_status' => $this->input->post('post_featured'),
                'cat_date'   => time(),
                'parent'     => $this->input->post('category')
            );

            $this->category->add_category($data_insert);
            redirect('admin/category/index');
        }
        $data['category'] = $this->category->get_all_category();
        $data['content']  = 'add_category';
        $this->load->view('template_admin', $data);
    }

    function edit_category($id){
        $this->load->library('form_validation');
        $this->form_validation->set_rules('post_title', 'Post_title', 'required|minlength[3]');
        $this->form_validation->set_rules('category');
        $this->form_validation->set_message('is_unique', 'Danh mục đã tồn tại');

        if ($this->form_validation->run()) {
            $cat_name = $this->input->post('post_title');
            $check = $this->category->check_category($cat_name, $id);

            if ($check == 0) {
                $data_insert = array(
                'cat_name'   => $this->input->post('post_title'),
                'cat_status' => $this->input->post('post_featured'),
                'cat_date'   => time(),
                'parent'     => $this->input->post('category')
                );
            $this->category->update_category($data_insert, $id);
            redirect('admin/category/index');
            } else {
                $data['category_err'] = 'Category đã tồn tại';
            }

        }
        $data['all_category'] = $this->category->get_all_category();
        $data['css']      = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/edit-post.css" />';
        $data['category'] = $this->category->edit_category($id);
        $data['content']  = 'edit_category';
        $this->load->view('template_admin', $data);
    }

    function delete_category($id){
        $this->category->delete_category($id);
        redirect('admin/category/index');
    }
}

?>