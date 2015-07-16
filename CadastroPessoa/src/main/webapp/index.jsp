<!DOCTYPE HTML>

<html>
<meta charset="UTF-8">

	<head>
		<title>Senac Goiás</title>
	
		<link href="web/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
	
		<script type="text/javascript" src="web/js/bootstrap.js"></script>
		<script type="text/javascript" src="web/js/bootstrap.min.js"></script>
	</head>
<body>
	<section class="container" style="text-align: center; margin-top: 15%;">
		<div>
			<button class="btn btn-primary btn-lg" onclick="javascript:cadastro()">Cadastrar-se</button>
			<button class="btn btn-primary btn-lg">Supervisor</button>
		</div>
	</section>
	
	<script>
		//depois vai para servlet-->
		function cadastro(){
			window.location.href="CadastroSenac.jsp";
		}
	
	</script>

</body>
</html>