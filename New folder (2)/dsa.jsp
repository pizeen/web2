<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>connect mysql</title>
    </head>
<body>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <%
    try{
        Class.forName("org.gjt.mm.mysql.Driver");
        Connection mycon =DriverManager.getConnection("jdbc:mysql://localhost:3306/elec_company?user=root&password=root");
        Statemant stmt =mycon.createStatement();
        stmt.executeUpdate("CREATE TABLE member (id TNT Auto_Increment Primary key,
        name Varchar(40))");
        stmt.close();
        mycon.close();
        out.println("ได้สร้างเทเลินชื่อ member แล้ว")
    }
    catch(ClassNotFoundException e){
        out.println("Not found driver");
    }
    catch(SQLException e){
        out.println("Not call");
    }
    %>
</body>   

</html>