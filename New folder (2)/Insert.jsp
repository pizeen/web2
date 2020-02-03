<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Insert Table</title>
    </head>

    <body bgcolor="B75E5E">
    <%@page contentType="text/html" pageEncoding="UTF8"%> 
    <%@page import="java.sql.*"%>                         
        <%
            try{
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?","root","root");
                Statement stmt = mycon.createStatement();
                //เพิ่มเเถวข้อมูล
                stmt.executeUpdate("INSERT INTO member (id,name) VALUES('101','สมชาย')");
                stmt.close();
                mycon.close();
                out.print("เพิ่มเเถวข้อมูล ลงในเทเบิลชื่อ member เเล้ว");
            }
            catch(ClassNotFoundException e){
                out.print("ไม่พบไดร์ฟเวอร์ฐานข้อมูลที่ใช้ติดต่อ");
            }
            catch(SQLException e){
                out.print("ไม่สามารถติดต่อกับฐานข้อมูลได้");
            }
        %>
    </body>
</html>