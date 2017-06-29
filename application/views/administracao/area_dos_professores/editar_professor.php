<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Controle de Avaliação Diagnóstica</title>
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
			heading("Editar professor: ", 3);		
	
			$atributos = array('name'=>'formulario_professor', 'id'=>'formulario_professor');
			
			echo form_open(base_url('administracao/gerenciar/salvar_alteracao'), $atributos).
			form_hidden('Codigo', $usuario[0]->Codigo).
			form_label("Nome: ", "text_nome").br().
			form_input('txt_nome', $usuario[0]->Nome).br().
			form_label("Login: ", "text_login").br().
			form_input('txt_login', $usuario[0]->Login).br().
			form_label("Senha: ", "text_senha"). br().
			form_input('txt_senha', $usuario[0]->Senha) . br().
			form_label("Inativo: ", "text_inativo"). br().
			form_input('txt_atividade', $usuario[0]->Tipo) . br().br().
			form_submit("btn_enviar", "Salvar").form_close();

			
		?>
	</body>
</html>
