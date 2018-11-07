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
	href="resources/css/mostrarLista.css">
<script type="text/javascript" src="resources/js/jquery.js"></script>



</head>
<body>




	<a href="novaAluno">Cadastrar novo aluno</a>
	<br />
	<br />
	<table class="w3-table-all w3-hoverable w3-centered"
		style="width: 100%">
		<thead>
			<tr class="w3-light-grey">
				<th style="width: 5%">Matricula</th>
				<th style="width: 30%">Nome</th>
				<th style="width: 30">Finalizado?</th>
				<th style="width: 15%">Data de finalização</th>
				<th style="width: 5%"></th>
				<th style="width: 5%"></th>
			</tr>
		</thead>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr>
				<td>${aluno.matricula}</td>
				<td>${aluno.nome}</td>
				<td ${aluno.curso}></td>
				<td><a href="deletarAluno?id=${aluno.matricula}">Remover</a></td>
				<td><a href="editarAluno?id=${aluno.matricula}">Editar</a></td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>