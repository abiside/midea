<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pages extends CI_Controller {

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
	}

	public function nosotros(){
		$vars = array("page_title"=>"Sobre Nosotros", "page"=>"about");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('nosotros',$vars,true)
			));
	}

	public function faq(){
		$vars = array("page_title"=>"Preguntas Frecuentes");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('faq',$vars,true)
			));
	}

	public function contact(){
		$vars = array("page_title"=>"Contáctanos");
		$this->load->view('layout',array(
				'contenido' => $this->load->view('contact',$vars,true)
			));
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */