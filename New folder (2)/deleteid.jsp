<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>searchid.jsp</title>
    </head>

    <body bgcolor="B75E5E">
    <%@page contentType="text/html" pageEncoding="UTF8"%> <!-- set thai -->
    <%request.setCharacterEncoding("UTF-8");%>             <!-- set การรับค่า -->
    <%@page import="java.sql.*"%>                         <!-- import class java -->
        <%
        try{
            String id = request.getParameter("id");

            Class.forName("org.gjt.mm.mysql.Driver");
            Connection mycon = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?user=root&password=root");
            Statement stmt = mycon.createStatement();
            ResultSet myresult = stmt.executeQuery("SELECT * FROM member WHERE id='"+id+"'");
            
            //จัดการกับผลลัพธ์ที่ได้จากคำสั่ง
            if(myresult.next()){
                stmt.executeUpdate("DELETE FROM member WHERE id='"+id+"'");
                out.print("ได้ลบรหัส "+id+" ออกจากฐานข้อมูลเเล้ว");
            }else{
                out.print("ไม่มีรหัสประจำตัว "+id+" ในฐานข้อมูล");
            }
        stmt.close();
        mycon.close();
        }catch (ClassNotFoundException e){
            out.print("ไม่พบไดร์ฟเวอร์ฐานข้อมูลที่ใช้ติดต่อ");
        }
        %>
    </body>
</html>