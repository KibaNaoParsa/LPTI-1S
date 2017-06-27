<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Gerenciador de Bandas</title>
		<?php
	echo link_tag('https://fonts.googleapis.com/css?family=Roboto+Condensed');
	echo link_tag('assets/css/estilo.css');
?>
	</head>
	<body>
		<h2>Bom dia!</h2>
		
		<?php
			echo anchor(base_url("administracao/gerenciar"), " Home ").anchor(base_url("administracao/gerenciar/control_professor"), " Área dos Professores ")
			.anchor(base_url("administracao/gerenciar/call_control_turmas"), " Área das Turmas ").anchor(base_url("administracao/logout"), " Logout ")
			.br().br().br().br().heading("Área das Turmas: ", 3);
				
				
			/*echo anchor(base_url("administracao/gerenciar/call_adicionar_aluno"), " Adicionar Alunos " )."           "
			.anchor(base_url("administracao/gerenciar/call_listar_alunos"), " Listar Alunos ");
			*/	
			foreach($turma as $t){
				echo anchor(base_url("administracao/gerenciar/call_selecao"), $t->Descricao).br();
			}
		?>
	</body>
</html>
