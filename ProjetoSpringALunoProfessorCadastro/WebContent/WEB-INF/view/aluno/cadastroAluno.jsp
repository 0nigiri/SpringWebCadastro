<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Lista Aluno</title>

<link rel="stylesheet" type="text/css"
	href="resources/css/cadastroAluno.css">

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/alunoVerificaLimpa.js"></script>
<script type="text/javascript" src="resources/js/sweetalert.min.js"></script>
<script type="text/javascript" src="resources/js/moment.js"></script>

</head>

<body>

	<!-- DADOS PESSOAIS-->
<form action="adicionarAluno" id = "cadastro" class="simple-form">
	<fieldset>
		<legend>
			<h3>Cadastrar novo aluno</h3>
		</legend>
		<table cellspacing="10">

			<!-- Nome-->

			<tr>

				<td><label for="nome">Nome: </label></td>

				<td align="left"><input type="text" name="nome" required  minlength="1" maxlength="40" size="40" required value="${aluno.nome}" ></td>


			</tr>

			<!-- Data de nascimento-->

			<tr>
				<td><label>Data de Nascimento: </label></td>
				<td align="left"><input type="date"	name="dataNascimento"  min="1900-01-01"
					max="2018-12-31" required  value="${aluno.dataNascimento}"/></td>
			</tr>

			<!-- CPF -->

			<tr>
				<td><label>CPF:</label></td>
				<td align="left">
					  <input type="text" name="cpf1"  minlength="9"	maxlength="9"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" size="9" onblur="verificadorCPF()" required value="${aluno.cpf1}">
					- 
					<input type="text" name="cpf2" size="2"  minlength="2" maxlength="2"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" size="2" onblur="verificadorCPF()" required value="${aluno.cpf2}">
					
					<input type="hidden" name="cpf">
				</td>
			</tr>

			<!-- Telefone -->

			<tr>
				<td><label>Telefone:</label></td>
				<td align="left"><input type="text" name="telefone1" size="2"  minlength="2"
					maxlength="2"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" required  value="${aluno.telefone1}">
					- 
					<input type="text" name="telefone2" size="9"  minlength="8" maxlength="9" 
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" required  value="${aluno.telefone2}">
					
					<input type="hidden" name="telefone">
				</td>
			</tr>

			<!-- Email-->

			<tr>

				<td><label for="eMail">Email: </label></td>

				<td align="left"><input type="email" name="eMail" required value="${aluno.eMail}"></td>


			</tr>
			
				<!-- Endereco-->

			<tr>

				<td><label for="endereco">Endereço: </label></td>

				<td align="left"><input type="text" name="endereco" required value="${aluno.endereco}"></td>


			</tr>

			<!-- sexo-->

			<tr>
				<td><label for="sexo">Sexo:</label></td>
				<td align="left"><select name="sexo" id="sexo" required  value="${aluno.sexo}">
						<option value="">Sexo:</option>
						<option value="male">Masculino</option>
						<option value="female">Feminino</option>
						<option value="other">LGBTTQQFAGPBDSM+</option>


				</select></td>
			</tr>

			<!-- Curso-->
0
			<tr>
				<td><label for="curso">Curso:</label></td>
				<td align="left"><select name="curso" id="curso" required  value="Cobol">
						<option value="">Cursos disponíveis:</option>
						<option value="Java WEB">Java WEB</option>
						<option value="Cobol">Cobol</option>
						<option value=".NET">.NET</option>
						<option value="Redes">Redes</option>
						<option value="Python">Python</option>

				</select></td>
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

	

</body>
</html>