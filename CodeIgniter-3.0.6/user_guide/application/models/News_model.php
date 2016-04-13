<?php
class News_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }
    public function get_news($slug = FALSE)
    {
    if ($slug === FALSE)
    {
        //$query = $this->db->get('news');
        $query = $this->db->get('dayoo_app');
        return $query->result_array();
    }

    //$query = $this->db->get_where('news', array('slug' => $slug));
    $query = $this->db->get_where('dayoo_app', array('slug' => $slug));
    return $query->row_array();
    }
}
