<?php
class Auth_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    function get_auth($per_page, $offset){
        $query = $this->db->limit($per_page, $offset);
        $query = $this->db->order_by('user_id', 'DESC');
        $query = $this->db->get('tbl_user');
        $data  = $query->result_array();
        return $data;
    }

    function count_auth(){
        $count = $this->db->count_all('tbl_user');
        return $count;
    }

    function add_auth($data_insert){
        $this->db->insert('tbl_user', $data_insert);
    }

    function get_auth_id($id){
        $query = $this->db->where('user_id', $id);
        $query = $this->db->get('tbl_user');
        $data = $query->row_array();
        return $data;
    }

    function get_auth_session($user){
        $query = $this->db->where('user_name', $user);
        $query = $this->db->get('tbl_user');
        $data = $query->row_array();
        return $data;
    }

    function delete_auth($id){
        $this->db->where('user_id', $id);
        $this->db->delete('tbl_user');
    }

    function check_auth($user, $id){
        $query = $this->db->where('user_id <>', $id);
        $query = $this->db->where('user_name', $user);
        $query = $this->db->get('tbl_user');
        $count = $query->num_rows();
        return $count;
    }

    function check_login($user, $pass){
        $query = $this->db->where('user_name', $user);
        $query = $this->db->where('user_password', $pass);
        $query = $this->db->get('tbl_user');
        $count = $query->num_rows();
        return $count;
    }
}
?>