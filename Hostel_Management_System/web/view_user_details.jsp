<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
    ResultSet rs = null;
    Statement stmt = null;
    Connection con = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Printing Data of Each Column in Database</title>
<link rel="stylesheet" href="user_details.css">
</head>
<body bgcolor="#ADD8E6">
<center><h1>Student Records</h1></center>
<marquee><h1><i>Double Sharing Room Rs.1600/- month & Single Sharing Room Rs.1200/- month</i></h1></marquee>
    <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aec", "root", "root");
            stmt = con.createStatement();
            String query = "SELECT * FROM user_reg";
            rs = stmt.executeQuery(query);
            out.println("<table border='1'>");
            out.println("<tr>");
            out.println("<th>Student ID</th>");
            out.println("<th>Student Name</th>");
            out.println("<th>Phone Number</th>");
            out.println("<th>Country</th>");
            out.println("<th>State</th>");
            out.println("<th>Gender</th>");
            out.println("<th>Address</th>");
            out.println("<th>Gurdain</th>");
            out.println("<th>Gurdain Number</th>");
            out.println("<th>Room Type</th>");
            out.println("<th>Aadhar No</th>");
            out.println("<th>Duration Month</th>");
            out.println("</tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td>");
                out.println("<td>" + rs.getString(5) + "</td>");
                out.println("<td>" + rs.getString(6) + "</td>");
                out.println("<td>" + rs.getString(7) + "</td>");
                out.println("<td>" + rs.getString(8) + "</td>");
                out.println("<td>" + rs.getString(9) + "</td>");
                out.println("<td>" + rs.getString(10) + "</td>");
                out.println("<td>" + rs.getString(11) + "</td>");
                out.println("<td>" + rs.getString(12) + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
<center><a href="calculator.html">Calculate Your Budget Here</a></center>
</body>
</html>