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
            String unm=request.getParameter("unm");
            int pwd=Integer.valueOf(request.getParameter("pwd"));
            

            try{
                
                boolean status=false;
                String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            String str="select * from admin where unm=? and pwd=?";
            PreparedStatement p=con.prepareStatement(str);
            
            p.setString(1, unm);
            p.setInt(2, pwd);
            
            ResultSet rs=p.executeQuery();
            status=rs.next();
            
            if(status==true)
            {
                response.sendRedirect("index.html");

            }
            else
            {
                //response.sendRedirect("admin_valid.jsp");
                out.println("Incorrect Password");
            }
          
                out.println("Successfully connected");
                con.close();
            }
            catch(Exception ex)
            {
                out.println("Error occured");
            }
         %>
    </body>
</html>
