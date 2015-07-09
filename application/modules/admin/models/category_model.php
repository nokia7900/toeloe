<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Category_model extends CI_Model {
    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    function get_category($per_page, $offset){
        $query = $this->db->limit($per_page, $offset);
        $query = $this->db->order_by('cat_id', 'DESC');
        $query = $this->db->get('category');
        $data  = $query->result_array();
        return $data;
    }

    function get_all_category(){
        $query = $this->db->get('category');
        $data = $query->result_array();
        return $data;
    }

    function add_category($data_insert){
        $this->db->insert('category', $data_insert);
    }

    function edit_category($id){
        $query = $this->db->where('cat_id', $id);
        $query = $this->db->get('category');
        $data = $query->row_array();
        return $data;
    }

    function check_category($cat_name, $id){
        $query = $this->db->where('cat_id <>', $id);
        $query = $this->db->where('cat_name', $cat_name);
        $query = $this->db->get('category');
        $count = $query->num_rows();
        return $count;
    }

    function update_category($data_insert, $id){
        $this->db->where('cat_id', $id);
        $this->db->update('category', $data_insert);
    }

    function delete_category($id){
        $this->db->where('cat_id', $id);
        $this->db->delete('category');
    }

    function count_category(){
        $data = $this->db->count_all('category');
        return $data;
    }
}

?>