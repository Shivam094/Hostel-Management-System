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
            int rid = Integer.valueOf(request.getParameter("room_number"));
            String room_type = request.getParameter("room_type");
            String room_capacity = request.getParameter("room_capacity");
            
            
            try{
                
                String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            String str="insert into room values(?,?,?)";
            
            PreparedStatement p=con.prepareStatement(str);
            
            p.setInt(1, rid);
            p.setString(2, room_type);
            p.setString(3, room_capacity);
            
            

            p.executeUpdate();
            out.println("New room added");
            con.close();
            
            }
            catch(Exception ex)
            {
                out.println("Error occured");
            }
        %>
    </body>
</html>
