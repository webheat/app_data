<?php
class News_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

 public function query($slug = FALSE)
    {
    if ($slug === FALSE)
    {
        //$query = $this->db->get('news');
        $query = $this->db->get('dayoo_app');
        return $query->result_array();
    }

    //$query = $this->db->get_where('news', array('slug' => $slug));
    //$query = $this->db->get_where('dayoo_app', array('slug' => $slug));
    $query = $this->db->simple_query('selecct * from dayoo_app');
    return $query->row_array();
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
    //$query = $this->db->get_where('dayoo_app');
    return $query->row_array();
    }

    public function set_news()
    {
    $this->load->helper('url');

   $slug = url_title($this->input->post('title'), 'dash', TRUE);

/*    $data = array(
        'title' => $this->input->post('title'),
        'slug' => $slug,
        'text' => $this->input->post('text')
    );

    return $this->db->insert('news', $data);
*/
      $data = array(
        'appname' => $this->input->post('appname'),
        'appdata' => $this->input->post('appdata')
    );

    return $this->db->insert('dayoo_app', $data);
    }

}
