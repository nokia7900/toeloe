<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Articles extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('articles_model', 'articles');
    }

    function index(){
        $this->load->library('pagination');

        $total_rows              = $this->articles->count_news();
        $per_page                = 5;
        $config['total_rows']    = $total_rows;
        $config['per_page']      = $per_page;
        $config['num_links']     = 5;
        $config['uri_segment']   = 4;
        $config['cur_tag_open']  = '<span>';
        $config['cur_tag_close'] = '</span>';
        $config['next_link']     = 'Next >>';
        $config['prev_link']     = '<< Prev';

        $config['base_url']      = base_url().'admin/articles/index';
        $this->pagination->initialize($config);
        $data['pagination']      = $this->pagination->create_links();
        $offset                  = $this->uri->segment(4) ;

        $data['articles']        = $this->articles->list_articles($per_page, $offset);
        $data['css']             = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/posts.css" />';
        $data['content']         = 'list_articles';
        $this->load->view('template_admin', $data);
    }

    function add_articles(){
        $data['css'] = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/add-post.css" />';
        $data['category'] = $this->articles->get_category();

        $this->load->library('form_validation');
        $this->load->library('upload');
        $this->form_validation->set_rules('post_title', 'post_title', 'required');
        $this->form_validation->set_rules('category', 'category', 'callback_checkcategory');
        $this->form_validation->set_rules('post_details', 'post_details', 'required');
        $this->form_validation->set_message('required', '(*)');

        if ($this->form_validation->run()) {

            $config['upload_path']   = './public/uploads/';
            $config['allowed_types'] = 'jpg|png|gif';
            $config['max_size']      = 2000;
            $this->upload->initialize($config);

            if ($this->upload->do_upload('post_thumb')) {
                $img_upload = $this->upload->data();
                $image = $img_upload['file_name'];
                $data_insert = array(
                    'news_title'    => $this->input->post('post_title'),
                    'news_category' => $this->input->post('category'),
                    'news_image'    => $image,
                    'news_status'   => $this->input->post('post_featured'),
                    'news_detail'   => $this->input->post('post_details'),
                    'news_date'     => time(),
                );
                $this->articles->insert_articles($data_insert);
                redirect('admin/articles/articles');
            } else {
                $data['upload_err'] = $this->upload->display_error();
                $data['content']    = 'add_articles';
                $this->load->view('template_admin', $data);
            }
        } else {
            $data['content'] = 'add_articles';
            $this->load->view('template_admin', $data);
        }
    }

    function edit_articles($id){
        $data['css'] = '<link rel="stylesheet" type="text/css" href="'.base_url().'public/styles/edit-post.css" />';
        $data['category'] = $this->articles->get_category();
        $data['articles'] = $this->articles->edit_articles($id);

        $this->load->library('form_validation');
        $this->load->library('upload');
        $this->form_validation->set_rules('post_title', 'post_title', 'required');
        $this->form_validation->set_rules('category', 'category', 'callback_checkcategory');
        $this->form_validation->set_rules('post_details', 'post_details', 'required');
        $this->form_validation->set_message('required', '(*)');

        if ($this->form_validation->run()) {

            $config['upload_path']   = './public/uploads/';
            $config['allowed_types'] = 'jpg|png|gif';
            $config['max_size']      = 2000;
            $this->upload->initialize($config);

            if ($this->upload->do_upload('post_thumb')) {
                $img_upload = $this->upload->data();
                $image = $img_upload['file_name'];
                $data_insert = array(
                    'news_title'    => $this->input->post('post_title'),
                    'news_category' => $this->input->post('category'),
                    'news_image'    => $image,
                    'news_status'   => $this->input->post('post_featured'),
                    'news_detail'   => $this->input->post('post_details'),
                    'news_date'     => time(),
                );
                $this->articles->update_articles($data_insert, $id);
                redirect('admin/articles/articles');
            } else {
                $data_insert = array(
                    'news_title'    => $this->input->post('post_title'),
                    'news_category' => $this->input->post('category'),
                    'news_image'    => $this->input->post('post_thumb'),
                    'news_status'   => $this->input->post('post_featured'),
                    'news_detail'   => $this->input->post('post_details'),
                    'news_date'     => time(),
                );
                $this->articles->update_articles($data_insert, $id);
                redirect('admin/articles/articles');
            }
        } else {
            $data['content'] = 'edit_articles';
            $this->load->view('template_admin', $data);
        }
    }

    function delete_articles($id){
        $table = 'news';
        $this->articles->delete_articles($table, $id);
        redirect('admin/articles/articles');
    }

    function checkcategory($cat){
        if ($cat == 0) {
            $this->form_validation->set_message('checkcategory', '(*)');
            return false;
        } else {
            return true;
        }
    }
}

?>