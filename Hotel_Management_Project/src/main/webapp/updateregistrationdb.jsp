<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Room Number - StarOne Hotel</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background: linear-gradient(135deg, #ff9966, #ff5e62);
            font-family: 'Poppins', sans-serif;
            padding: 20px;
            color: #2c3e50;
            position: relative;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            text-align: center;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 15px;
            color: #2ecc71;
        }

        .error {
            color: #e74c3c;
        }
        h2, .error {
            transition: color 0.3s;
        }
        @media (max-width: 600px) {
            .card {
                padding: 30px;
            }
            h2 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>

<%
    String phone = request.getParameter("gnumber");
    String newRoomNo = request.getParameter("groomno");

    if (phone != null && newRoomNo != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");

            // Update the room number based on the mobile number
            String updateQuery = "UPDATE guest SET roomno = ? WHERE mobile = ?";
            PreparedStatement pstmt = con.prepareStatement(updateQuery);
            pstmt.setString(1, newRoomNo);
            pstmt.setString(2, phone);
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
%>
<div class="card">
    <h2>Room number updated successfully!</h2>
    <p>New Room Number: <strong><%= newRoomNo %></strong></p>
</div>
<%
            } else {
%>
<div class="card">
    <h2 class="error">No guest found with the provided mobile number.</h2>
</div>
<%
            }

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
%>
<div class="card">
    <h2 class="error">Error: <%= e.getMessage() %></h2>
</div>
<%
        }
    } else {
%>
<div class="card">
    <h2 class="error">Please provide both the new room number and the mobile number.</h2>
</div>
<%
    }
%>

</body>
</html>
