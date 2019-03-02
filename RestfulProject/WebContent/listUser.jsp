<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mostrar Usuários</title>
</head>
<body>
	<jsp:include page="resources/menu/menu.jsp" flush="true"></jsp:include>
	<div class="container" style="margin-top: 70px">
		<table border=1 class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Sobrenome</th>
					<th>Email</th>
					<th colspan=2>Action</th>
				</tr>
			</thead>
			<tbody class="table-hover">
				<c:forEach items="${users}" var="user">
					<tr>
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.nome}" /></td>
						<td><c:out value="${user.sobrenome}" /></td>
						<td><c:out value="${user.email}" /></td>
						<td><button class="d-block mx-auto btn btn-primary" onclick="javascript:redirect('edit','<c:out value="${user.id}"/>')"><i class="fas fa-edit"></i>&nbsp;Editar</button></td>
						<td><button class="d-block mx-auto btn btn-danger" onclick="javascript:redirect('delete','<c:out value="${user.id}"/>')"><i class="fas fa-trash"></i>&nbsp;Apagar</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>
			<button onclick="javascript:redirect('insert');" class="btn btn-primary"><i class="fas fa-plus-circle"></i>&nbsp;Adicionar Usuário</button>
		</p>
	</div>
</body>
</html>