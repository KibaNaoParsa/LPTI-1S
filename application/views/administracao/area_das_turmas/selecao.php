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
			heading("Selecionar ação: ", 3);
			
			echo anchor(base_url("administracao/gerenciar/call_adicionar_aluno"), " Adicionar Aluno ")."         ".
			anchor(base_url("administracao/gerenciar/call_listar_turma"), " Listar Alunos ");

		?>
	</body>
</html>