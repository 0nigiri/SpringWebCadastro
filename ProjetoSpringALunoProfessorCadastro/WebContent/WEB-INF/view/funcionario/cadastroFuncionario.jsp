<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cadastro Funcionario</title>

<link rel="stylesheet" type="text/css"
	href="resources/css/validator.css">
	
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/funcionarioVerificaLimpa.js"></script>
<script type="text/javascript" src="resources/js/sweetalert.min.js"></script>
<script type="text/javascript" src="resources/js/moment.js"></script>

</head>

<body>

	<!-- DADOS PESSOAIS-->
<form action="adicionarFuncionario" id = "cadastro" class="simple-form">
	<fieldset>
		<legend>
			<h3>Cadastrar novo funcionario</h3>
		</legend>
		<table cellspacing="10">

			<!-- Nome-->

			<tr>

				<td><label for="nome">Nome: </label></td>

				<td align="left"><input type="text" name="nome" required  minlength="1" maxlength="40" size="40" required value="${funcionario.nome}" ></td>


			</tr>

			<!-- Data de nascimento-->

			<tr>
				<td><label>Data de Nascimento: </label></td>
				<td align="left"><input type="date"	name="dataNascimento"  min="1900-01-01"
					max="2018-12-31" required  /></td>
			</tr>

			<!-- CPF -->

			<tr>
				<td><label>CPF:</label></td>
				<td align="left">
					  <input type="text" name="cpf1"  minlength="9"	maxlength="9"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" size="9" onblur="verificadorCPF()" required >
					- 
					<input type="text" name="cpf2" size="2"  minlength="2" maxlength="2"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" size="2" onblur="verificadorCPF()" required >
					
					<input type="hidden" name="cpf">
				</td>
			</tr>

			<!-- Telefone -->

			<tr>
				<td><label>Telefone:</label></td>
				<td align="left"><input type="text" name="telefone1" size="2"  minlength="2"
					maxlength="2"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" required  >
					- 
					<input type="text" name="telefone2" size="9"  minlength="8" maxlength="9" 
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" required  >
					
					<input type="hidden" name="telefone">
				</td>
			</tr>

			<!-- Email-->

			<tr>

				<td><label for="eMail">Email: </label></td>

				<td align="left"><input type="email" name="eMail" required ></td>


			</tr>
			
				<!-- Endereco-->

			<tr>

				<td><label for="endereco">Endereço: </label></td>

				<td align="left"><input type="text" name="endereco" required ></td>


			</tr>

			<!-- sexo-->

			<tr>
				<td><label for="sexo">Sexo:</label></td>
				<td align="left"><select  selected="male" name="sexo" id="sexo" required>
						<option value="" >Sexo:</option>
						<option value="male" >Masculino</option>
						<option value="female">Feminino</option>
						<option value="other">LGBTTQQFAGPBDSM+</option>


				</select></td>
			</tr>

			<!-- Salario-->     

			<tr>
				<td><label for="salario">Salario:</label></td>
				<td align="left">
					<input name="salario" type="number" id="moeda" min="900" max="99999"  step="0.010" required onblur="moedaDecimal('salario')" size="10" />
				</td>
			</tr>
			
					<!-- Vale Alimentacao-->     

			<tr>
				<td><label for="valeAlimentacao">Vale Alimentacao:</label></td>
				<td align="left">
					<input name="valeAlimentacao" type="number" id="moeda" min="1" max="9999"  step="0.010"  onblur="moedaDecimal('valeAlimentacao')" size="10" />
				</td>
			</tr>
			
					<!-- Vale Refeicao-->     

			<tr>
				<td><label for="valeRefeicao">Vale Refeicao:</label></td>
				<td align="left">
					<input name="valeRefeicao" type="number" id="moeda" min="1" max="9999"  step="0.010"  onblur="moedaDecimal('valeRefeicao')" size="10" />
				</td>
			</tr>
			
					<!-- Vale Transporte-->     

			<tr>
				<td><label for="valeTransporte">Vale Transporte:</label></td>
				<td align="left">
					<input name="valeTransporte" type="number" id="moeda" min="1" max="9999"  step="0.010"  onblur="moedaDecimal('valeTransporte')" size="10" />
				</td>
			</tr>

					<!-- Cargo-->    



				<tr>
					<td><label for="cargo">Cargo:</label></td>
					<td align="left"><select name="cargo" id="Cargo" required
						value="${funcionario.cargo}" onchange="seProfessor()">
							<option value="">Cargos:</option>
							<option value="Professor">Professor</option>
							<option value="Analista">Analista</option>
							<option value="Mainframe">Mainframe</option>
							<option value="Analista Baixa Plataforma">Analista Baixa Plataforma</option>
							<option value="Programador Mainframe">Programador Mainframe</option>
							<option value="Líder de Projetos">Líder de Projetos</option>
							<option value="Gerente">Gerente</option>

					</select></td>
				</tr>
				

			<!-- Diciplina-->     

			<tr>
				<td><label id="disciplina" for="disciplina" hidden>Disciplina:</label></td>
				<td align="left"><select required name="disciplina" id="disciplina"  value="${aluno.disciplina}" hidden>
						<option value=""selected disabled>Disciplina disponíveis:</option>
						<option value="Java WEB">Java WEB</option>
						<option value="Cobol">Cobol</option>
						<option value=".NET">.NET</option>
						<option value="Redes">Redes</option>
						<option value="Python">Python</option>

				</select></td>
			</tr>

						<!-- Filhos-->     

					<!-- Salario-->     

			<tr>
				<td><label for="filho">Quantos filhos(as):</label></td>
				<td align="left">
					<input name="salario" type="number" id="moeda" min="0" max="10"  required onblur="moedaDecimal('salario')" size="10" />
				</td>
			</tr>
			
			

				<!-- Botoes -->

			<tr>
				<td align="left">
					<input  type="button" value="Adicionar" id="verificador" onclick="verificadorCadastro()">
					
					 <input  type="button" value="Limpar"  id="limpar" onclick="limparCampos()">
				</td>
			</tr>


		</table>
	</fieldset>


	</form>

<script type="text/javascript">


$( document ).ready(function() {
    console.log( "ready!" );
    $("[name='sexo']").val("${funcionario.sexo}"); 
    $("[name='cargo']").val("${funcionario.cargo}");  
    $("[name='disciplina']").val("${funcionario.disciplina}");  
});
	
</script>
	

</body>
</html>