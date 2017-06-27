<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Gerenciador de Bandas</title>
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
			heading("Cadastrar aluno: ", 3);
			
			$atributos = array('name'=>'formulario_cadastro_aluno', 'id'=>'formulario_cadastro_aluno');
			echo form_open(base_url('administracao/gerenciar/adicionar_aluno'), $atributos).
				form_label("Turma: ", "text_turma"). br().
				form_input('txt_nome', $turma[0]->Descricao).br().
				form_label("Nome: ", "txt_nome").br().
				form_input('txt_nome').br().
				form_label("Login: ", "text_login").br().
				form_input('txt_login').br().br().

				form_submit("btn_enviar", "Cadastrar").form_close()
		?>
	</body>
</html>
