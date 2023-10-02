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
         int registro = stmt.executeUpdate("DELETE FROM registros WHERE id="+id);
         if (registro==1){
         out.println("<H1> Cuenta eliminada </H1>");
         }

                  }//fin del if

      %>
</body>
</html>