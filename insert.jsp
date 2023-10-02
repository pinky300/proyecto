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
         int id= Integer.parseInt(request.getParameter("id"));
         String nombre= request.getParameter("nombre");
         String apellido= request.getParameter("apellido");
         String correo = request.getParameter("correo");
         String password = request.getParameter("password");
         String tipo = request.getParameter("tipo");
         String insertar ="INSERT INTO registros VALUES("+id+","+"'"+nombre+"'"+","+"'"+apellido+"'"+","+"'"+correo+"'"+","+"'"+password+"'"+","+"'"+tipo+"'"+")";
         int registro = stmt.executeUpdate("INSERT INTO registros VALUES("+id+","+"'"+nombre+"'"+","+"'"+apellido+"'"+","+"'"+correo+"'"+","+"'"+password+"'"+","+"'"+tipo+"'"+")");
         if (registro==1){
         out.println("<H1>Cuenta registrada</H1>");
       


         }

                  }//fin del if
      %>
</body>
</html>