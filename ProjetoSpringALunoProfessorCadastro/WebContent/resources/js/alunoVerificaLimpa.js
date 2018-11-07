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
	        $("[name='birthDate']").val(""); 
	        $("[name='cpf']").val(""); 
	        $("[name='cpf2']").val(""); 
	        $("[name='telefone']").val(""); 
	        $("[name='telefone2']").val(""); 
	        $("[name='email']").val(""); 
	        $("[name='adress']").val(""); 
	        $("[name='sexo']").val(""); 
	        $("[name='curso']").val("");  
		  } else {
		    swal("Your imaginary file is safe!");
		  }
		});
	
}

function verificadorCPF(){
	
	var count = 0;
	var cpf = 0;
	cpf = $("[name='cpf']").val() + $("[name='cpf2']").val();
	count = $("[name='cpf']").val().length + $("[name='cpf2']").val().length;
	
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
	    		});
	    	
	    	
	    	
	    } else if (valido == 0 ){
	    	swal({
	    		  title: "CPF invalido!",
	    		  text: "Por favor corrigir o cpf.",
	    		  icon: "warning",
	    		  button: "OWWW shieeet!",
	    		});
	    	$("[name='cpf']").val(""); 
	        $("[name='cpf2']").val(""); 
	    	
	    	
	    }
	    
	}
	
	
	
}

function verificadorCadastro(){
	var count = 0;
	count = $("[name='cpf']").val().length + $("[name='cpf2']").val().length;
	var dataValida = moment($("input[name='birthDate']").val());
	alert($("[name='sexo'] option:selected").val());
	
	if(			   $("[name='nome']").val() == null
			||     dataValida.isValid() == false
			||    	cpf < 11
			||      $("[name='telefone']").val() == null
			||      $("[name='telefone2']").val() == null
			||      $("[name='email']").val() == null
			||      $("[name='adress']").val() == null	
			||      $("[name='sexo'] option:selected").text() == "Sexo:"
			||     $("[name='curso'] option:selected").text() == "Cursos disponíveis:"){
		
		swal({
			  title: "Alerta",
			  text: "Campos invalidos ou em bracos!",
			  icon: "warning",
			  button: "Aww yiss!",
			});

	}
	
	
}
