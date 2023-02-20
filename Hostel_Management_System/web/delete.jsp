<%-- 
    Document   : admin_valid
    Created on : Feb 10, 2023, 9:13:40 PM
    Author     : SHIVAM ROY
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int sid=Integer.valueOf(request.getParameter("sid"));
            

            try{
                
                String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            String str="delete from user_reg where ID=?";
            PreparedStatement p=con.prepareStatement(str);
            
            p.setInt(1, sid);
            
            p.executeUpdate();
                      
                out.println("User deleted Successfully");
                con.close();
            }
            catch(Exception ex)
            {
                out.println("Error occured");
            }
         %>
    </body>
</html>
