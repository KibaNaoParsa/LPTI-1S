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
			echo anchor(base_url("administracao/gerenciar"), "Home").anchor(base_url("administracao/logout"), " Logout ")
			.anchor(base_url("administracao/gerenciar/call_adicionar_professor"), "Área dos Professores").br().br().br().br().heading("Turmas: ", 3);
				
				foreach($turma as $t){
					echo anchor(base_url(), $t->Descricao).br();
				}
	
		?>
	</body>
</html>
