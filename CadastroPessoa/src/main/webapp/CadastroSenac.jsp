
<html class="no-js" lang="pt-br"
	xmlns:og="http://opengraphprotocol.org/schema/">

<head>

<!-- Autor: rafaelhbarreto@gmail.com -->

<meta charset="utf-8" />

<title>Senac Goiás</title>

<meta name="viewport" content="width=1020" />
<meta name="generator" content="HTML-Kit 292">
<link rel="shortcut icon"
	href="http://www.go.senac.br/portal/images/favicon.png" />
<meta name="description"
	content="Portal Senac Goiás. Cursos Livres, Técnicos, Graduação, e Pós graduação">
<meta name="keywords" content="">
<meta name="robots" content="all">

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- JS -->
<script type="text/javascript"
	src="http://www.go.senac.br/portal/js/modernizr-2.0.6.js"></script>

<!-- CSS -->
<link rel="stylesheet"
	href="http://www.go.senac.br/portal/bootstrap/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://www.go.senac.br/portal/css/formulario-pre-cadastro/formulario.css"
	media="all">

</head>

<body>

	<header id="topo">

		<div class="container">
			<a href="http://www.go.senac.br/portal/" id="logo"
				title="Senac Goiás"><img
				src="http://www.go.senac.br/portal/images/logo_branco_transp.png"
				alt="Logo Senac Goiás Transparente"></a> <span
				id="telefone-atendimento"> <b>3219.5180</b> (atendimento)
			</span>
		</div>

	</header>

	<section class="container">

		<a href="http://www.go.senac.br/portal/" id="voltar-curso">voltar
			para o site </a>

		<!-- quebra de fluxo -->
		<div class="clear"></div>

		<div class="linha-titulo">
			<span> Insira os seus dados </span>
			<p>
				<b>*</b> = Campos de preenchimento obrigatório
			</p>

			<div class="hr">
				<i></i>
				<hr>
			</div>

		</div>

		<div id="formulario">

			<div class="alert alert-danger fade in hide" id="aviso">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">×</button>
				<div class="mensagem-aviso"></div>
			</div>

			<form class="form-horizontal" role="form" id="formContato">
				<!-- separar secao -->
				<div class="hr"></div>
				<!-- separar secao -->

				<div class="form-group">
					<form class="form-group" action="Servlet"
						onSubmit="return valida_dados(this)">

						<label for="nome_completo_pre"> <i>*</i> Nome completo:
						</label>
						<div>
							<input type="text" id="nome_completo_pre" name="nome"
								class="form-control required" maxlength="50" />
						</div>
				</div>
				<div class="form-group inline fone">

					<label for="ddd_telefone_fixo_pre"> <i>*</i> Telefone:
					</label>

					<div class="ddd">
						<input type="text" id="ddd_telefone_fixo_pre"
							name="ddd_telefone_fixo_pre" maxlength="2"
							class="form-control required" />
					</div>

					<span class="traco"> - </span>

					<div class="telefone">
						<input type="text" id="telefone_fixo_pre" name="telefone_fixo_pre"
							maxlength="9" class="form-control required" />
					</div>

				</div>

				<div class="form-group">

					<label for="email_pre"> <i>*</i> E-mail:
					</label>

					<div>
						<input type="text" id="email_pre" name="email_pre"
							class="form-control required" maxlength="50" />
					</div>

					<div class="clear"></div>
				</div>


				


<!-- Deveria ser checkbox para selecionar matutino, vespertino e noturno no período -->
				<div class="form-group">
				
				<label for="perido_disponibilidade_estudo"> Período :</label>       
					<div>
						<input type="text" id="empresa" name="empresa"
							class="form-control" maxlength="50" />
					</div>
				</div>

				
<!-- 			Também poderia ser um checkbox para selecionar os dias da semana	 -->

				<div class="form-group">
				
				<label for="dias_semanas_estudo"> Frequência:</label>       
					<div>
						<input type="text" id="empresa" name="empresa"
							class="form-control" maxlength="50" />
					</div>
				</div>
				
				<div class="form-group">

					<div class="clear"></div>

					<!-- separar secao -->
					<div class="hr"></div>
					<!-- separar secao -->

					<div class="form-group" id="botao">
						<button type="submit" id="btnEnviar"
							data-loading-text="ENVIANDO..." class="btn btn-primary">ENVIAR</button>
					</div>
					
			</form>

		</div>

		<!-- Hiddens -->
		<input id="url-post-formulario" type="hidden"
			value="http://www.go.senac.br/portal/contato/enviaFormulario" /> <input
			id="url-get-cidades" type="hidden"
			value="http://www.go.senac.br/portal/contato/getCidades" />


	</section>

	<script type="text/javascript"
		src="http://www.go.senac.br/portal/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="http://www.go.senac.br/portal/js/jquery.validate.js"></script>
	<script type="text/javascript"
		src="http://www.go.senac.br/portal/bootstrap/js/bootstrap.min.js"></script>

	<!-- scripts de modal -->

	<script type="text/javascript">
        $(function()
        {
        	// # 
			// # quando o usuario clicar no botão enviar
			// # 
			
            $('#btnEnviar').bind('click',function()
            {

                $("#formContato").validate
                ({

                	// # para nao mostrar os 
                    errorPlacement: function(error, element) {},
                    
                    // # formulario for invalido 
                    showErrors: function( errorMap, errorList )
                    {
                        $('.mensagem-aviso').html("<strong>Atenção! </strong> Existe "+ this.numberOfInvalids() + " campo(s) obrigatórios em branco.");    
                        this.defaultShowErrors();
                    },
                    
                    invalidHandler: function()
                    {
                        $('#aviso').removeClass('hide');
                    },

                    // # formulario valido 
                    submitHandler: function( form ) 
                    {
                        // # remover o aviso de erros 
                        $('#aviso').removeClass('hide').addClass('hide');

                        var btnEnviar = $('#btnEnviar');
                        btnEnviar.button('loading');

                     	// # 
                        // # envio ajax 
                        // #
         	            var urlPostAjax = $('#url-post-formulario').val(); 
         	            var strFormValues = $('#formContato').serialize(); 
         	                            
         	            $.ajax
         	            ({
         	            	type: "POST",
         	            	url: urlPostAjax,
         	            	data: strFormValues
         	            }).	done(function( data )
                 	   	{
         	                				
         	
	         	            // # mostra a mensagem 
	         	            var obj = jQuery.parseJSON( data );
	         	            alert( obj.message );
	         	
	         	            // # volta o botão para o estado original 
	         	           	var btnEnviar = $('#btnEnviar');
	         	            btnEnviar.button('reset');

                 	   	}); // # end ajax 
                 	   	
                    } // # end submitHandler

                }); // # end validate function 
            
            }); // # en click button


        });

        // carregar as cidades 
        function carregarCidades( uf )
        {
			// Limpar os campos 
			$('#cidade').empty();
			$('#cidade').val('Carregando ...'); 
			
			var urlGetCidades = $('#url-get-cidades').val(); 
			
			$.ajax(
			{
		
				//pegando a url apartir da action do form
			    url: urlGetCidades,
			    data: 'uf='+uf,
			    type: 'POST',
			      
			    success: function( data )
			    {
			    	 var arrObjetos = jQuery.parseJSON( data );
			    	  
			    	  // # quantidade de objetos > 0 
			    	  if( arrObjetos.length > 0 )
			    	  {
			    		  for ( var i = 0; i < arrObjetos.length; i = i + 1 ) 
			    		  {
			    			  $('#cidade').append($('<option>', 
							  { 
							        value: arrObjetos[ i ].id,
							        text : arrObjetos[ i ].nome
			    			  }));
			    		  }
			    	  }		    	  
			    }
			});
        }
  
    </script>


</body>