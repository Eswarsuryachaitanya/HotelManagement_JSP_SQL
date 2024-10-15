<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Guest Details - StarOne Hotel</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 400px;
    }
</style>
</head>
<body>
<div class="container">
<%
    String name = request.getParameter("guestname");
    String phone = request.getParameter("phone");
    String roomNo = request.getParameter("roomnumber");
    String aadhar = request.getParameter("aadhar");
    String checkinDate = request.getParameter("checkin");

    Connection con = null;
    PreparedStatement pre = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");
        String query = "INSERT INTO guest(guestname, mobile, roomno, aadhar, checkin) VALUES (?, ?, ?, ?, ?)";
        pre = con.prepareStatement(query);
        pre.setString(1, name);
        pre.setString(2, phone);
        pre.setString(3, roomNo);
        pre.setString(4, aadhar);
        pre.setString(5, checkinDate);
        int result = pre.executeUpdate();

        if (result > 0) {
            out.println("<h2>Guest details inserted successfully!</h2>");
        } else {
            out.println("<h2>Failed to insert guest details.</h2>");
        }
    } catch (Exception e) {
        out.println("<h2>Error: " + e.getMessage() + "</h2>");
    } finally {
        try {
            if (pre != null) pre.close();
            if (con != null) con.close();
        } catch (Exception e) {
            out.println("<h2>Error while closing connection: " + e.getMessage() + "</h2>");
        }
    }
%>
</div>
</body>
</html>

