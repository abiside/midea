<?php 

class Partners_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
	}
	
	function lista($tipo){
		$this->db->select("*,ciudades.nombre as ciudad, estados.nombre as estado, ciudades.id as city, estados.id as state, estados.latitud as latitud, estados.longitud as longitud")
				->from("estados")
				->join("ciudades", "ciudades.estado = estados.id")
				->join("partners", "partners.ciudad = ciudades.id")
				->where("tipo", $tipo)
				->where("activo", 1)
				->order_by("estados.nombre asc, ciudades.nombre asc");

		return $this->db;
	}

	function markers($tipo){
		$lista = $this->lista($tipo)->group_by("estados.nombre")->get()->result();

		$markers = array();

		foreach($lista as $d){
			$address = $d->estado;
			if($d->latitud != 0){
				$aux = array("id"=>$d->state, "latLng" => array($d->latitud,$d->longitud), "options"=>array("icon" => base_url()."media/img/lib/marker.png"));
			}else{
				$aux = array("id"=>$d->state, "address" => $address, "options"=>array("icon" => base_url()."media/img/lib/marker.png"));
			}
			array_push($markers, $aux);
		}
		//standar marker array
		return json_encode($markers);

	}

	function estados(){
		$estados = array();
		$data = $this->db->from("estados")->order_by("id")->get()->result();
		foreach($data as $d){
			$estados[$d->id] = $d->nombre;
		}
		return $estados;
	}
	
}

?>
