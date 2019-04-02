<%-- 
    Document   : index
    Created on : 1/04/2019, 08:23:01 PM
    Author     : LabTW03
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto UNSIS Clinica</title>
    </head>
    <body>
        <h1>Proyecto UNSIS Clinica</h1>
        <form>
            Numero: <input type="txt"  name="numero" />
            <input type="submit"  name="Enviar" />
            <br>
        </form>
        <%
            try{
                int numero=Integer.parseInt(request.getParameter("numero"));
                Long factorial=new Long(1);
                if(numero>=0){
                    for(int i=1;i<=numero;i++){
                        factorial*=i;
                    }
                }else{
                    out.println("<p>Ingrese un número valido</p>");
                }
                out.println("<p>El factorial de "+numero+" es. </p>"+factorial);
            }catch(Exception e){
                System.out.println(e.getMessage());
            }
        %>
    </body>
</html>
