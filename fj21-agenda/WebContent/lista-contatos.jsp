
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<c:import url="cabecalho.jsp" />
	
	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	
	<table border="1">
	<td>Nome</td> <td>E-mail</td> 
	<td>Endereco</td> <td>Data de Nascimento</td>
	<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista }" varStatus="id">
		
			<tr bgcolor="#${id.count % 2 == 0 ? '255228196' : 'astasdf' }">
				<td>${contato.nome }</td>
				<td>
					<c:choose>
						<c:when test="${not empty contato.email }">
						${contato.email }
						</c:when>
					<c:otherwise>
						Trouxa
					</c:otherwise>
					</c:choose>	
				</td>
				<td>${contato.endereco }</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time }" pattern="dd/MM/yyyy" /></td>
			
			</tr>
		</c:forEach>
	</table>
	
	<c:import url="rodape.jsp" />
</body>
</html>