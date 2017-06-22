<?php defined('BASEPATH') or exit('No direct script access allowed');
	class Login extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->library('session');
		}
		
		public function index(){
			$this->load->library('session');
			$this->load->helper('form');
			$this->load->view('administracao/login');
		}
		
		public function efetuar_login(){

		
		
		$this->load->library('session');
			$usuario = $this->input->post('txt_usuario');
			$senha = $this->input->post('txt_senha');
			$connect = mysql_connect('localhost', 'root', 'root');
			$db = mysql_select_db('LPTI2017');

			$verifica = mysql_query("SELECT * from Usuario WHERE Login = '$usuario' AND Senha = '$senha'") or die("erro");
			
			if (mysql_num_rows($verifica)<=0){
				$this->session->sess_destroy();
				redirect('administracao/login');
				echo"<script language='javascript' type='text/javascript'>alert('Login e/ou senha incorretos');window.location.href='login.html';</script>";
				
			}else{
				$array=array("logado"=>true);
				$this->session->set_userdata($array);
				redirect("administracao/gerenciar");
			}


/*			if($usuario=="administrador" and $senha == "12345"){
				$array=array("logado"=>true);
				$this->session->set_userdata($array);
				redirect("administracao/gerenciar");
			}else{
				$this->session->sess_destroy();
				redirect("administracao/login");
			}
*/



		}
		public function logout(){
			$this->load->library('session');
			$this->session->sess_destroy();
			redirect("administracao/login");
		}
	}
	
