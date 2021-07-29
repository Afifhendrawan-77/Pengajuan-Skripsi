<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dosen_model extends CI_Model {
    
     function index()
   {
     $query = $this->db->query( "SELECT * FROM skripsi");

     return $query->result();
    
   }

   
}

?>