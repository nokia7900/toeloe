<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Articles_model extends CI_Model {
    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    function list_articles($per_page, $offset){
        $query = $this->db->join('category', 'category.cat_id = news.news_category');
        $query = $this->db->limit($per_page, $offset);
        $query = $this->db->order_by('news_id', 'DESC');
        $query = $this->db->get('news');
        $data  = $query->result_array();
        return $data;
    }

    function count_news(){
        $data = $this->db->count_all('news');
        return $data;
    }

    function get_category(){
        $query = $this->db->get('category');
        $data  = $query->result_array();
        return $data;
    }

    function insert_articles($data_insert){
        $this->db->insert('news', $data_insert);
    }

    function edit_articles($id){
        $query = $this->db->where('news_id', $id);
        $query = $this->db->get('news');
        $data  = $query->row_array();
        return $data;
    }

    function update_articles($data_insert, $id){
        $this->db->where('news_id', $id);
        $this->db->update('news', $data_insert);
    }

    function delete_articles($table, $id){
        $this->db->where('news_id', $id);
        $this->db->delete($table);
    }
}
?>