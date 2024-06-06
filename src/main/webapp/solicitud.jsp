
<%@ page import="java.awt.*" %>
<%@ page import="sol.Persona" %>

<%--
  Created by IntelliJ IDEA.
  User: Estudiante
  Date: 6/6/2024
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Solicitud</title>
</head>
<body>
<h1>Solicitud</h1>
<jsp:useBean id="persona" class="sol.Persona" scope="session"/>

<%
    String nombre = "";
    int edad= 0;
    String sexo ="";
    double sueldoMensual=0.0;


    // Verificamos si se enviaron los valores base y altura desde el formulario
    String nombParam = request.getParameter("nombre");
    String edadParam = request.getParameter("edad");
    String sexoParam = request.getParameter("sexo");
    String sueldoMensualParam = request.getParameter("sueldoMensual");

    // your existing code here

    if (nombParam != null && edadParam != null && sexoParam != null && sueldoMensualParam != null && !nombParam.isEmpty() && !edadParam.isEmpty() && !sexoParam.isEmpty() && !sueldoMensualParam.isEmpty()) {
    nombre = nombParam;
    edad = Integer.parseInt(edadParam);
    sexo = sexoParam;
    sueldoMensual = Double.parseDouble(sueldoMensualParam);
    }

%>



<form action="solicitud.jsp" method="post">
    <label for="nombre">Nombre del Cliente:</label>

    <input id="nombre" type="text" name="nombre" value="<%= nombre %>" />
    <br/>
    <label for="edad">Edad del Cliente:</label>
    <input id="edad" type="number" name="edad" value="<%= edad %>" />
    <br/>
    <label for="sexo">Sexo del Cliente:</label>
    <input id="sexo" type="text" name="sexo" value="<%= sexo %>" />
    <br/>
    <label for="sueldoMensual">Sueldo Mensual del Cliente:</label>

    <input id="sueldoMensual" type="number" name="sueldoMensual" value="<%= sueldoMensual %>" />
    <br/>
    <input type="submit" value="Setear valores" />
</form>
<jsp:setProperty name="persona" property="nombre" value="<%=nombre%>"/>
<jsp:setProperty name="persona" property="edad" value="<%=edad%>"/>
<jsp:setProperty name="persona" property="sexo" value="<%=sexo%>"/>
<jsp:setProperty name="persona" property="sueldoMensual" value="<%=sueldoMensual%>"/>
<%-- Mostramos los valores ingresados --%>
<p>Valores Ingresados</p>
<p>Nombre del Cliente: <%= nombre %></p>
<p>Edad del Cliente: <%= edad %></p>
<p>Sexo del Cliente: <%= sexo %></p>
<p>Sueldo Mensual del Cliente: <%= sueldoMensual %></p>

<a href="credito.jsp">Dirigase a Credito </a>

</body>
</html>
