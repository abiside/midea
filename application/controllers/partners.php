<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Partners extends CI_Controller {

	function __construct(){
		parent::__construct();
		$estados = json_encode($this->Partners_model->estados());
	}

	public function index()
	{
		//recibimos los datos de todos los distribuidores/partners
		$partners = $this->Partners_model->lista(1)->get()->result();
		$markers = $this->Partners_model->markers(1);
		$estados = json_encode($this->Partners_model->estados());

		//marcadores para join con direcciones
		$markers_aux = array();
		foreach($partners as $p){
			$markers_aux[$p->city] = true;
		}

		$vars = array("page_title"=>"Inicio", "title"=>false, "partners"=>$partners, "markers"=>$markers, "aux"=>$markers_aux, "estados"=>$estados, "page"=>"distribuidores");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('distribuidores',$vars,true)
			));
	}

	public function servicio(){

		//recibimos los datos de todos los distribuidores/partners
		$partners = $this->Partners_model->lista(2)->get()->result();
		$markers = $this->Partners_model->markers(2);
		$estados = json_encode($this->Partners_model->estados());


		//marcadores para join con direcciones
		$markers_aux = array();
		foreach($partners as $p){
			$markers_aux[$p->city] = true;
		}

		$vars = array("page_title"=>"Inicio", "title"=>false, "partners"=>$partners, "markers"=>$markers, "aux"=>$markers_aux, "estados"=>$estados, "page"=>"soporte");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('soporte',$vars,true)
			));

	}

	public function showrooms(){
		//recibimos los datos de todos los distribuidores/partners
		$partners = $this->Partners_model->lista(3)->get()->result();
		$markers = $this->Partners_model->markers(3);
		$estados = json_encode($this->Partners_model->estados());

		//marcadores para join con direcciones
		$markers_aux = array();
		foreach($partners as $p){
			$markers_aux[$p->city] = true;
		}

		$vars = array("page_title"=>"Inicio", "title"=>false, "partners"=>$partners, "markers"=>$markers, "aux"=>$markers_aux, "estados"=>$estados, "page"=>"soporte");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('showrooms',$vars,true)
			));

	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */