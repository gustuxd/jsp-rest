<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adicionar Usuário</title>
</head>
<body>
	<jsp:include page="resources/menu/menu.jsp" flush="true"></jsp:include>
	<div class="container" style="margin-top: 70px">
		<form method="POST" action='UserController' name="frmAddUser" id="frmAddUser">
			<div class="row mx-auto">
				ID: <input class="form-control" type="text" readonly="readonly" name="id" value="<c:out value="${user.id}"/>"/>
			</div>
			<div class="row mx-auto">
				Nome: <input class="form-control" required type="text" name="nome" id="nome" value="<c:out value="${user.nome}"/>"/>
			</div>
			<div class="row mx-auto">
				Sobrenome: <input class="form-control" type="text" name="sobrenome" id="sobrenome" value="<c:out value="${user.sobrenome}"/>"/>
			</div>
			<div class="row mx-auto">
				Email: <input class="form-control" type="text" name="email" id="email" value="<c:out value="${user.email}"/>"/>
			</div>
			<br>
			<div class="row mx-auto">
				<button class="btn btn-primary" type="button" onclick="enviar(event);"><i class="fas fa-share-square"></i>&nbsp;Enviar</button>
				&nbsp;&nbsp;&nbsp;
				<button class="btn btn-secondary" type="button" onclick="redirect('listUser');"><i class="fas fa-caret-left"></i>&nbsp;Voltar</button>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	function enviar(e){
		e.preventDefault();
		
		if($('#nome').val() == '') {
			msgSmall("Digite um nome");
			$('#nome').focus();
			return false;
		}
		if($('#sobrenome').val() == '') {
			msgSmall("Digite um email");
			$('#email').focus();
			return false;
		}
		if($('#email').val() == '') {
			msgSmall("Digite um email");
			$('#email').focus();
			return false;
		}
		
		$.post("UserController", $("#frmAddUser").serialize());
		redirect('listUser');
	}
</script>
</html>