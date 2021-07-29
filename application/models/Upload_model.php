<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Upload_model extends CI_Model {
    
     function index()
   {
     $query = $this->db->query( "SELECT * FROM skripsi");

     return $query->result();
    
   }

   
   function seminar()
   {
     $query = $this->db->query( "SELECT * FROM seminar");

     return $query->result();
    
   }

   function ujian_skripsi()
   {
     $query = $this->db->query( "SELECT * FROM daftarujian");

     return $query->result();
    
   }

   function dosen_pembimbing()
   {
     $query = $this->db->query( "SELECT * FROM dospem");

     return $query->result();
    
   }

   public function getById($id)
    {
        return $this->db->get_where($this->table, ["id_judulskripsi" => $id])->row();
    }

   public function edit($id_judulskripsi)
   {
       $this->datatables->select('skripsi');
       $this->db->from('upload');
       $this->datatables->where('id_judulskripsi', $id_judulskripsi);

       return $this->db->get();
   }
   public function update($data, $id_judulskripsi)
   {
        $this->db->update('upload', $data, array('id' => $id_judulskripsi));
        return ($this->db->affected_rows() > 1) ? TRUE : FALSE;
   }

}


?>