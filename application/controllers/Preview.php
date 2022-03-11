<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Preview extends CI_Controller
{
    
    public function __construct()
    {
        
        parent::__construct();
        $this->load->helper('url');
        
        // Load Pagination library
        $this->load->library('pagination');
        
        // Load model
        $this->load->model('Preview_Model');
        
        $this->load->library('meta');
        
        // $this->load->model('archive');
    }
    
    public function index()
    {
        $this->load->view('layout/header');
        $this->load->view('preview_form');
        $this->load->view('preview_list');
        $this->load->view('layout/footer');
    }
    
    public function loadRecord($rowno = 0)
    {
        
        // Row per page
        $rowperpage = 10;
        
        // Row position
        if ($rowno != 0) {
            $rowno = ($rowno - 1) * $rowperpage;
        }
        
        // All records count
        $allcount = $this->Preview_Model->getrecordCount();
        
        // Get  records
        $users_record = $this->Preview_Model->getData($rowno, $rowperpage);
        
        // Pagination Configuration
        $config['base_url']         = base_url() . 'index.php/User/loadRecord';
        $config['use_page_numbers'] = TRUE;
        $config['total_rows']       = $allcount;
        $config['per_page']         = $rowperpage;
        
        // Initialize
        $this->pagination->initialize($config);
        
        // Initialize $data Array
        $data['pagination'] = $this->pagination->create_links();
        $data['result']     = $users_record;
        $data['row']        = $rowno;
        
        echo json_encode($data);
        
    }
    
    public function save()
    {
        $previewTitle       = $this->input->post('previewTitle');
        $previewImage       = $this->input->post('previewImage');
        $previewDescription = $this->input->post('previewDescription');
        $previewUrl         = $this->input->post('previewUrl');
        
        $data = array(
            'title' => $previewTitle,
            'img' => $previewImage,
            'content' => $previewDescription,
            'link' => $previewUrl
        );
        $this->Preview_Model->insert_entry($data);
    }
    
    //Validate URL and genrate preview data.
    public function generatePreview()
    {
       
        $url = $this->input->post('url');
        
        try {
            // Get The Meta URL
            $urlMeta = $this->meta->callInstance($url);
            
            // Get meta info from URL 
            $metaDataJson = $this->meta->callIns($urlMeta);
            
            
            // Decode JSON data in array 
            $metaData         = json_decode($metaDataJson);
            $data['metaData'] = $metaData;
            $data['status']   = "success";
        }
        catch (Exception $e) {
            $statusMsg        = $e->getMessage();
            $data['status']   = "error";
            $data['metaData'] = $statusMsg;
        }
        $this->load->view('preview_data.php', $data);
    }
    
}