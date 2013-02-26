<?php 

class Partners_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	
	function lista(){
		$this->db->select("*,ciudades.nombre as ciudad, estados.nombre as estado, ciudades.id as city")
				->from("estados")
				->join("ciudades", "ciudades.estado = estados.id")
				->join("partners", "partners.ciudad = ciudades.id")
				->order_by("estados.nombre asc, ciudades.nombre asc");

		return $this->db;
	}

	function markers(){
		$lista = $this->lista()->group_by("ciudades.nombre")->get()->result();

		$markers = array();

		foreach($lista as $d){
			$address = $d->ciudad . ", " . $d->estado;
			$aux = array("id"=>$d->city, "address" => $address, "options"=>array("icon" => base_url()."media/img/lib/marker.png"));
			array_push($markers, $aux);
		}
		//standar marker array
		return json_encode($markers);

	}
	
}

?>
