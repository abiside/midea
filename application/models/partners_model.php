<?php 

class Partners_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	
	function lista(){
		$this->db->select("*,ciudades.nombre as ciudad, estados.nombre as estado")
				->from("estados")
				->join("ciudades", "ciudades.estado = estados.id")
				->join("partners", "partners.ciudad = ciudades.id")
				->order_by("estados.nombre asc");

		return $this->db->get()->result();
	}

	function markers(){
		$lista = $this->lista();

		$markers = array();

		foreach($lista as $d){
			$address = $d->ciudad . ", " . $d->estado;
			$aux = array( "address" => $address, "options"=>array("icon" => base_url()."media/img/lib/marker.png"));
			array_push($markers, $aux);
		}
		//standar marker array
		return json_encode($markers);

	}
	
}

?>
