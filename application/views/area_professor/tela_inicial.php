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
		<?php
			echo anchor(base_url("administracao/logout"), " Logout ").anchor(base_url(), "Visualizar Relatórios");

				/*heading("Bandas cadastradas", 3);
				
				foreach($banda as $b){
					echo anchor(base_url("administracao/gerenciar/excluir/".$b->id), " Excluir ").
					anchor(base_url("administracao/gerenciar/alterar/".$b->id), " Alterar ").br().br()." Data de Fundação: ".
					date("d/m/Y", strtotime($b->data_fundacao)).br()."Nome: ".$b->nome.br()."Quantidade de integrantes: ".$b->qtd_integrantes.br().br();
				}
				*/ 
		?>
	</body>
</html>
