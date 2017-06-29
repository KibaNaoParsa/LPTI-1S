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
			.anchor(base_url("administracao/gerenciar/call_control_turmas"), " Área das Turmas ").anchor(base_url("administracao/logout"), " Logout ")
			.br().br().br().br().heading("Área das Turmas: ", 3);
				
			/*echo anchor(base_url("administracao/gerenciar/call_adicionar_aluno"), " Adicionar Alunos " )."           "
			.anchor(base_url("administracao/gerenciar/call_listar_alunos"), " Listar Alunos ");
			*/	
			/*foreach($turma as $t){
				echo anchor(base_url("administracao/gerenciar/call_selecao"), $t->Descricao).br();
			}*/
		?>
		
		<div id="col-md-4">
			<?php
			
				echo anchor(base_url("administracao/gerenciar/call_selecao"), $turma[0]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[1]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[2]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[3]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[4]->Descricao).br();
		
			?>
		</div>
		
		<div id="col-md-4">
			<?php
			
				echo anchor(base_url("administracao/gerenciar/call_selecao"), $turma[5]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[6]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[7]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[8]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[9]->Descricao).br();
		
			?>
		</div>
		
		<div id="col-md-4">
			<?php
			
				echo anchor(base_url("administracao/gerenciar/call_selecao"), $turma[10]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[11]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[12]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[13]->Descricao).br().
				anchor(base_url("administracao/gerenciar/call_selecao"), $turma[14]->Descricao).br();
		
			?>
		</div>
	</body>
</html>
