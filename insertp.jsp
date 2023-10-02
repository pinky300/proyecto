<%@ page import= "java.io.*, java.text.*, java.util.*, javax.servlet.*, javax.servlet.http.*, java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=	, initial-scale=1.0">
	<title>Document</title>
</head>
<body>

	<%
	Connection con=null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/empresa", "root", "");
         if(con!=null){
         Statement stmt=con.createStatement();
         String nombre= request.getParameter("nombre");
         String numerotar = request.getParameter("numerotar");
         String vencimiento = request.getParameter("vencimiento");
         String codigo = request.getParameter("codigo");
         String calle = request.getParameter("calle");
         String colonia = request.getParameter("colonia");
         String cp = request.getParameter("cp");

         String insertar ="INSERT INTO pagos VALUES("+"'"+nombre+"'"+","+"'"+numerotar+"'"+","+"'"+vencimiento+"'"+","+"'"+codigo+"'"+","+"'"+calle+"'"+","+"'"+colonia+"'"+","+"'"+cp+"'"+")";
         int registro = stmt.executeUpdate("INSERT INTO pagos VALUES("+"'"+nombre+"'"+","+"'"+numerotar+"'"+","+"'"+vencimiento+"'"+","+"'"+codigo+"'"+","+"'"+calle+"'"+","+"'"+colonia+"'"+","+"'"+cp+"'"+")");
         if (registro==1){
         out.println("<H1>Registro exitoso</H1>");
       


         }

                  }//fin del if
      %>
</body>
</html>