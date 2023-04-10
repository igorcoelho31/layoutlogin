<!DOCTYPE html>
<%@page import="java.util.List" %>
<%@page import="modelo.Usuario" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/homestyle.css">
</head>
<body>
<div class="menu-bar">
      <h1 class="logo">Projeto<span>Integrador</span></h1>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Sobre</a></li>
        <li><a href="#">Páginas</a></li>         
        <li><a href="#">Blog</a></li>
        <li><a href="LogoutServlet">Logout</a></li>
      </ul>
    </div>
    
    
   
      <%
    List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
    %>
    <table border="1" style="display:flex; justify-content:center; text-align:center; ">
    <div class="content">
  <tr>
    <th>Usuario</th>
    <th>Nome</th>
    <th>Email</th>
  </tr>

 <%
 for (Usuario usuario: lista){
	 out.write("<tr>");
	 out.write("<td>" + usuario.getUsuario() + "</td>");
	 out.write("<td>" + usuario.getNome() + "</td>");
	 out.write("<td>" + usuario.getEmail() + "</td>");
	 out.write("</tr>");
 }
 %>

</table>
   
  </div> 
</body>
</html>