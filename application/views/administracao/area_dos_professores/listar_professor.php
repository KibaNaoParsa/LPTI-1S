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
			
			foreach($usuario as $u){
					echo anchor(base_url("administracao/gerenciar/editar_professor/".$u->Codigo), " Editar ")." ".
					"Nome: ".$u->Nome.br().br();
			}
		?>
		
		
		
		<?php
		/*	echo anchor(base_url("administracao/gerenciar"), "Home").anchor(base_url("administracao/logout"), " Logout ").
			anchor(base_url("administracao/gerenciar/call_control_turmas"), "Área das Turmas").
			heading("Cadastrar professor: ", 3);
			
			$atributos = array('name'=>'formulario_editar_professor', 'id'=>'formulario_editar_professor');
			
						
			echo form_open(base_url('administracao/gerenciar/salvar_alteracao'), $atributos).
			form_hidden('id', $banda[0]->id).
			form_label("Nome: ", "txt_titulo").br().
			form_input('txt_titulo', $banda[0]->nome).br().
			form_label("Quantidade de integrantes: ", "txt_texto").br().
			form_input('txt_texto', $banda[0]->qtd_integrantes).br().
			form_label("Data de fundação: ", "data_criacao"). br().
			form_input('txt_data', $banda[0]->data_fundacao) . br().
			form_submit("btn_enviar", "Salvar").form_close();
		*/
		?>
		
	</body>
</html>
