<html>
<head>

 <title> delid.html </title>
 <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
 
</head>
 <body><%@page contentType="text/html" pageEncoding="UTF-8"%>
       <%@page import="java.sql.*"%>
        <%
    try{
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String sql="SELECT * FROM member WHERE id='"+id+"'";
        String sql2="Insert INTO  member(id,name) VALUE('"+id+"','"+name+"')";

        Class.forName("org.gjt.mm.mysql.Driver");
        Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?","root","root");
        Statement stmt = mycon.createStatement();
        ResultSet myresult = stmt.executeQuery(sql);

        if(myresult.next()){ 
                out.print("can't add data "+id+"on database");   }

        else{ stmt.executeUpdate(sql2);
            out.println("Add id success: "+id+"in database");}
        stmt.close();
        mycon.close();
    }
   
   catch(ClassNotFoundException e){
        out.println("Not found driver");
    }
    catch(SQLException e){
        out.println("Not call");
    }
    %>
</body>
</form>
</html>