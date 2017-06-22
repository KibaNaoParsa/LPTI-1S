<?php defined('BASEPATH') or exit('No direct script acess allowed');
	class Gerenciar extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('session');
			if(!$this->session->userdata('logado')){
				redirect("administracao/login");
			}
		}
		
		public function index() {
			$this->load->view('area_professor/tela_inicial');
		}
	}
