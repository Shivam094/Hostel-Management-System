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
            int sid = Integer.valueOf(request.getParameter("student_id"));
            String snm = request.getParameter("student_name");
            String ph_num = request.getParameter("phone_number");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String guardian_name = request.getParameter("guardian_name");
            String g_ph_num = request.getParameter("guardian_phone_number");
            String room = request.getParameter("room");
            String a_no = request.getParameter("adhar_no");
            String stay = request.getParameter("stay");
            
            try{
                
                String connectionURL = "jdbc:mysql://localhost:3306/aec";
                Connection con=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(connectionURL,"root","root");
                if(!con.isClosed()){}
                
            String str="insert into user_reg values(?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement p=con.prepareStatement(str);
            
            p.setInt(1, sid);
            p.setString(2, snm);
            p.setString(3, ph_num);
            p.setString(4, country);
            p.setString(5, state);
            p.setString(6, gender);
            p.setString(7, address);
            p.setString(8, guardian_name);
            p.setString(9, g_ph_num);
            p.setString(10, room);
            p.setString(11, a_no);
            p.setString(12, stay);
            

            p.executeUpdate();
            out.println("Thanks for registering..You will get a confirmation mail shortly");
            con.close();
            
            }
            catch(Exception ex)
            {
                out.println("Error occured");
            }
        %>
    </body>
</html>
