<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Controle de Avaliação Diagnóstica</title>
		<meta charset="utf-8">
		<?php
			echo link_tag('https://fonts.googleapis.com/css?family=Roboto+Condensed');
			echo link_tag('assets/css/estilo.css');
		?>
	</head>
	<body>
		
		<h2>Bom dia!</h2>
		
		
		<?php
			echo anchor(base_url("administracao/gerenciar"), " Home ").anchor(base_url("administracao/gerenciar/control_professor"), " Área dos Professores ")
			.anchor(base_url("administracao/gerenciar/call_control_turmas"), " Área das Turmas ").anchor(base_url("administracao/logout"), " Logout ").
			heading("Cadastrar professor: ", 3);
			
			$atributos = array('name'=>'formulario_cadastro_professor', 'id'=>'formulario_cadastro_professor');
			echo form_open(base_url('administracao/gerenciar/adicionar'), $atributos).
				form_label("Nome: ", "txt_nomebanda").br().
				form_input('txt_nome').br().
				form_label("Login: ", "text_login").br().
				form_input('txt_login').br().
				form_label("Senha: ", "text_senha"). br().
				form_input('txt_senha') . br().br().

				form_submit("btn_enviar", "Cadastrar").form_close()
		?>
	</body>
</html>
