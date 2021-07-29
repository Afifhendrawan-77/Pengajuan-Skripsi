<?php
class mmhsskripsi extends CI_Model{
   function selectAll()
   {
        $this->db->order_by("judul","desc"); 
        return $this->db->get('mmhsskripsi')->result();
   }
}
?>