<%--
  Created by IntelliJ IDEA.
  User: Estudiante
  Date: 6/6/2024
  Time: 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Credito</title>
</head>
<body>
<h1>Credito</h1>
<h1>Obtener los valores de la Solicitud</h1>


<jsp:useBean id="persona" class="sol.Persona" scope="session"/>
<p>Valor del nombre: <jsp:getProperty name="persona" property="nombre"/></p>
<p>Valor del edad: <jsp:getProperty name="persona" property="edad"/></p>
<p>Valor del sexo: <jsp:getProperty name="persona" property="sexo"/></p>
<p>Valor del sueldoMensual: <jsp:getProperty name="persona" property="sueldoMensual"/></p>

<jsp:useBean id="credito" class="sol.Credito" scope="session"/>

<%
        double monto = 0;
        int plazo= 0;



    // Verificamos si se enviaron los valores base y altura desde el formulario
    String montoParam = request.getParameter("monto");
    String plazoParam = request.getParameter("plazo");

    // your existing code here

    if (montoParam != null && plazoParam != null  && !montoParam.isEmpty() && !plazoParam.isEmpty()) {
        monto = Integer.parseInt(montoParam);
        plazo = Integer.parseInt(plazoParam);
    }

%>
<form action="credito.jsp" method="post">
    <label for="monto">Monto:</label>

    <input id="monto" type="number" name="monto" value="<%= monto %>" />
    <br/>
    <label for="plazo">Plazo:</label>
    <input id="plazo" type="number" name="plazo" value="<%= plazo %>" />
    <br/>
    <input type="submit" value="Setear valores" />
    <jsp:setProperty name="credito" property="monto" value="<%=monto%>"/>
    <jsp:setProperty name="credito" property="plazo" value="<%=plazo%>"/>
</form>
<p>Monto del Cliente: <%= monto %></p>
<p>Plazo del Cliente: <%= plazo %></p>
<p>Plazo: <%= credito.getPlazo() %> meses</p>
<p>Total: <%= credito.calcularTotal() %></p>
<p>Pagos de: <%= credito.calcularPagoMensual() %></p

</body>
</html>
