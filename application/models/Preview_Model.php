<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

Class Preview_Model extends CI_Model
{
    
    
    public function __construct()
    {
        parent::__construct();
    }
    
    // Fetch records
    public function getData($rowno, $rowperpage)
    {
        
        $this->db->select('*');
        $this->db->from('posts');
        $this->db->order_by("id", "desc");
        $this->db->limit($rowperpage, $rowno);
        $query = $this->db->get();
        
        return $query->result_array();
    }
    
    // Select total records
    public function getrecordCount()
    {
        
        $this->db->select('count(*) as allcount');
        $this->db->from('posts');
        $query  = $this->db->get();
        $result = $query->result_array();
        
        return $result[0]['allcount'];
    }
    
    //Data insertion method
    public function insert_entry($data)
    {
        $this->db->insert('posts', $data);
    }
    
}