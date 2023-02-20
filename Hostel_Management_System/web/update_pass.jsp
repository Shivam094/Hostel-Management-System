<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String num = request.getParameter("num");
    int pwd = Integer.valueOf(request.getParameter("pwd"));

        try{
            String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            
            
            String str="update user_valid set Password=? where Phone_No=?";
            
            PreparedStatement p=con.prepareStatement(str);
            
            p.setString(2, num);
            
            p.setInt(1, pwd);
            
            int er=p.executeUpdate();
            out.println("Password Changed");
            con.close();
            
        }
        catch(SQLException ex)
        {
            System.out.println("Error Occured");
        }
        
%>
