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
            String num = request.getParameter("num");
            String unm = request.getParameter("unm");
            int pwd = Integer.valueOf(request.getParameter("pwd"));
            
            
            try{
                
                String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            String str="insert into user_valid values(?,?,?)";
            
            PreparedStatement p=con.prepareStatement(str);
            
            p.setString(1, num);
            p.setString(2, unm);
            p.setInt(3, pwd);
            

            p.executeUpdate();
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
