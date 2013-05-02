<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Functions extends CI_Controller {

	public function lang($lng, $url){
		//$this->config->set_item('language', $lng);
		$this->session->set_userdata("language",$lng);
		redirect(urldecode($url));
	}

	public $extensiones = array("jpg","JPG","jpeg","JPEG","png","PNG", "gif","bmp","BMP");
	public function imagen()
	{	
		$this->load->library("image_lib");
		ini_set("memory_limit","100M");
		
	
		$carpeta = $this->input->get("c");
		$imagen = $this->input->get("i");
		$width = $this->input->get("w");
		$height = $this->input->get("h");
		
		$url_imagen = "";
		
		$hay_thumb = false; $extension = "";
		
		foreach($this->extensiones as $e){
			if(file_exists("media/img/" . $carpeta ."/". $imagen . "." . $e)){//verificamos que el archivo fuente de la imagen exista
				if(file_exists("media/img/" . $carpeta ."/thumbs/" . $imagen . "_" . $width . "x" . $height . "." . $e)){//revisamos si ya se ha creado algun thumb 
					$url_imagen = "media/img/" . $carpeta ."/thumbs/" . $imagen . "_" . $width . "x" . $height . "." . $e;
					$hay_thumb = true;
				}else{
					$url_imagen = "media/img/" . $carpeta ."/". $imagen . "." . $e;
				}
				$extension = $e;
			}
		}
		
		
		if($url_imagen == "" && $carpeta == "productos"){
			$url_imagen = "media/img/lib/sinimagen.jpg";
			$imagen = "sinimagen"; $extension = "jpg";
		}
		
		if(!$hay_thumb){
	
			$config['image_library'] = 'gd2';
			$config['maintain_ratio'] = TRUE;

			//echo $url_imagen;
			$config['source_image'] = $url_imagen;	
			$config['new_image'] = "media/img/" . $carpeta ."/thumbs/" . $imagen . "_" . $width . "x" . $height . "." . $extension;
			$config['width'] = $width;
			$config['height'] = $height;
			$this->image_lib->initialize($config);
			$this->image_lib->resize();
			$this->image_lib->clear();
		}
		
		$config['image_library'] = 'gd2';
		$config['maintain_ratio'] = TRUE;
		$config['source_image'] = "media/img/" . $carpeta ."/thumbs/" . $imagen . "_" . $width . "x" . $height . "." . $extension;
		$config['dynamic_output'] = true;
		$this->image_lib->initialize($config);
		$this->image_lib->resize();
		$this->image_lib->clear();
			

	}
	
	public $video_id;
	public function video($v){$this->video_id = $v; $this->load->view("s/video.php");}
	
	
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */