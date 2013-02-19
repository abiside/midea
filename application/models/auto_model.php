<?php 

class Auto_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	
	function lista(){
		return $this->db->order_by("id","asc")->get("autos")->result();
	}
	
}

?>
