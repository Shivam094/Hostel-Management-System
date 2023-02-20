<%-- 
    Document   : user_index
    Created on : Feb 12, 2023, 12:13:27 PM
    Author     : SHIVAM ROY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<%
    String unm = (String) session.getAttribute("unm");
%>
<html>
  <head>
    <title>The Hostel California</title>
    <style>
      /* Add styles for header */
      header {
        background-color: lightgray;
        padding: 20px;
        display: flex;
        justify-content: space-between;
      }

      /* Add styles for header options */
      .header-options {
        display: flex;
      }

      .header-options a {
        margin-right: 10px;
        text-decoration: none;
        color: black;
      }
      
      .header-options a:hover {
        width: 100px;
        height: 30px;
        background-color: grey;
        color: white;
        border: 2px solid black;
        padding: 12px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      }
    </style>
  </head>
  <body bgcolor="#ADD8E6">
    <header>
      <h1>The Hostel California</h1>
      <div class="header-options">
        <a href="rates.html">Rooms & Rates</a>
        <a href="room_register.html">Guest Book</a>
        <a href="photo.html">Photos</a>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact</a>
        <a href="user_login.html">LogOut</a>

      </div>
    </header>
  <center>
      <h1><font color="black">Welcome <%out.println(unm);%></h1>
  
      <img src="https://media-cdn.tripadvisor.com/media/photo-s/09/77/07/90/the-hostel-california.jpg" alt="Image from Internet">
      <p color="black">Welcome Home to the Coolest and Best Experience of Accommodation for Climbers, Hikers, and All International Travelers alike.</p>
  </center>
  </body>
</html>
