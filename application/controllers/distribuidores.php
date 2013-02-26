<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Distribuidores extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		//recibimos los datos de todos los distribuidores/partners
		$partners = $this->Partners_model->lista()->get()->result();
		$markers = $this->Partners_model->markers();

		//marcadores para join con direcciones
		$markers_aux = array();
		foreach($partners as $p){
			$markers_aux[$p->city] = true;
		}

		$vars = array("page_title"=>"Inicio", "title"=>false, "partners"=>$partners, "markers"=>$markers, "aux"=>$markers_aux);
		$this->load->view('layout',array(
				'contenido' => $this->load->view('distribuidores',$vars,true)
			));
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */