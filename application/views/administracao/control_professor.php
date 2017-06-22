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
			echo anchor(base_url("administracao/gerenciar"), "Home").anchor(base_url("administracao/logout"), " Logout ").
			anchor(base_url("administracao/gerenciar/call_control_turmas"), "Área das Turmas").
			heading("Área dos professores: ", 3);
			
			echo anchor(base_url("administracao/gerenciar/call_adicionar_professor"), "Cadastrar Professores")."         ".
			anchor(base_url("administracao/gerenciar/call_editar_professor"), "Editar Professores");

		?>
	</body>
</html>
