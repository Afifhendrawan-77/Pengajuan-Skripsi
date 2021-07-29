<?php
class cmhsskripsi extends CI_Controller{
function __construct(){
    parent::__construct();
    $this->load->model('mmhsskripsi');
}
function index()
{
    
    $data['mhsskripsi']=$this->mmhsskripsi->selectAll();
    $this->load->view('vmhsskripsi',$data);
    }
}
?>