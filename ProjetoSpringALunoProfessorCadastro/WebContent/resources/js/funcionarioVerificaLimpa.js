function moedaDecimal(element){
	
	if ($("[name='"+element+"']").val() > 0){
		$("[name='"+element+"']").val(parseFloat($("[name='"+element+"']").val()).toFixed(2));
	}
}



function limparCampos(){
	
	swal({
		  title: "Deseja limpar os campos?",
		  text: "Once deleted, you will not be able to recover this imaginary file!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal("Poof! Your imaginary file has been deleted!", {
		      icon: "success",
		    });
	        $("[name='nome']").val(""); 
	        $("[name='dataNascimento']").val(""); 
	        $("[name='cpf1']").val(""); 
	        $("[name='cpf2']").val(""); 
	        $("[name='telefone1']").val(""); 
	        $("[name='telefone2']").val(""); 
	        $("[name='eMail']").val(""); 
	        $("[name='endereco']").val(""); 
	        $("[name='sexo']").val(""); 
	        $("[name='curso']").val("");  
		  } else {
		    swal("Your imaginary file is safe!");
		  }
		});
	
}

function cancelaEdicao(){
	
	swal({
		  title: "Deseja cancelar a edicao?",
		  text: "Once canceled, you will not be able to recover this imaginary file!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal("Poof!!", {
		      icon: "success",
		    }).then(function(){ 

		    	   window.location.href="listaFuncionario";
		
					});
		 
		  } else {
		    swal("Your imaginary file is safe!");
		  }
		});
	
	
	
}

function verificadorCPF(){
	
	var count = 0;
	var cpf = 0;
	cpf = $("[name='cpf1']").val() + $("[name='cpf2']").val();
	count = $("[name='cpf1']").val().length + $("[name='cpf2']").val().length;
	
	if(count == 11){

		var Soma;
	    var Resto;
	    var valido = 1;
	    Soma = 0;
	  if (	cpf == "00000000000" 
		 ||	cpf == "11111111111"
		 ||	cpf == "22222222222"
		 ||	cpf == "33333333333"
		 ||	cpf == "44444444444"
		 ||	cpf == "55555555555"
		 ||	cpf == "66666666666" 
		 ||	cpf == "77777777777"
		 ||	cpf == "88888888888"
		 ||	cpf == "99999999999" ) valido = 0;
	     
	  for (i=1; i<=9; i++) Soma = Soma + parseInt(cpf.substring(i-1, i)) * (11 - i);
	  Resto = (Soma * 10) % 11;
	   
	    if ((Resto == 10) || (Resto == 11))  Resto = 0;
	    if (Resto != parseInt(cpf.substring(9, 10)) ) valido = 0;
	   
	  Soma = 0;
	    for (i = 1; i <= 10; i++) Soma = Soma + parseInt(cpf.substring(i-1, i)) * (12 - i);
	    Resto = (Soma * 10) % 11;
	   
	    if ((Resto == 10) || (Resto == 11))  Resto = 0;
	    if (Resto != parseInt(cpf.substring(10, 11) ) ) valido = 0;
	    

	   
	    if(valido == 1){
	    	
	    	swal({
	    		  title: "CPF valido!",
	    		  icon: "success",
	    		  button: "Aww yiss!",
	    	}).then(function(){ 
	    		 $("[name='telefone1']").focus();
				 
		
					});
	    	
	    	
	    	
	    } else if (valido == 0 ){
	    	swal({
	    		  title: "CPF invalido!",
	    		  text: "Por favor corrigir o cpf.",
	    		  icon: "warning",
	    		  button: "OWWW shieeet!",
	    	}).then(function(){ 
	    		 $("[name='cpf1']").focus();
				 
		
					});
	    	$("[name='cpf1']").val(""); 
	        $("[name='cpf2']").val(""); 
	    	
	    	
	    }
	    
	}
	
	
	
}

function verificadorCadastro(){
	
	if($("#cadastro").is(":invalid")){
		
		swal({
			  title: "Alerta",
			  text: "Campos invalidos ou em bracos!",
			  icon: "warning",
			  button: "Aww yiss!",
			});

	} else if ($("#cadastro").is(":valid")){
		swal( {
			  title: "Cadastro concluido!",
			  text: "O cadastro foi realizado com sucesso!",
			  icon: "success",
			  button: "Aww yiss!",
			}).then(function(){ 

				var tel =  $("[name='telefone1']").val() +   $("[name='telefone2']").val();
				$("[name='telefone']").val(tel); 
				 var cpf =  $("[name='cpf1']").val() +   $("[name='cpf2']").val();
				 $("[name='cpf']").val(cpf);
				 
				 $("#cadastro").submit();
		
					});
		
		
	}
	
	
}

function verificadorEditar(){
	
	if($("#editar").is(":invalid")){
		
		swal({
			  title: "Alerta",
			  text: "Campos invalidos ou em bracos!",
			  icon: "warning",
			  button: "Aww yiss!",
			});

	} else if ($("#editar").is(":valid")){
		swal( {
			  title: "Editar concluido!",
			  text: "O Editar foi realizado com sucesso!",
			  icon: "success",
			  button: "Aww yiss!",
			}).then(function(){ 

				var tel =  $("[name='telefone1']").val() +   $("[name='telefone2']").val();
				$("[name='telefone']").val(tel); 
				 var cpf =  $("[name='cpf1']").val() +   $("[name='cpf2']").val();
				 $("[name='cpf']").val(cpf);
				 
				 $("#editar").submit();
		
					});
		
		
	}
	
	
}

