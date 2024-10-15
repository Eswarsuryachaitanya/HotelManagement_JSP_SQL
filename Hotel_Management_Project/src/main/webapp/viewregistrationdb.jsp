<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Guest Details - StarOne Hotel</title>
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
            background: linear-gradient(135deg, #f093fb, #f5576c);
            font-family: 'Poppins', sans-serif;
            padding: 20px;
            color: #2c3e50;
            position: relative;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            text-align: center;
        }

        h2 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #34495e;
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
                font-size: 18px;
            }
        }
    </style>
</head>
<body>

<%
    String name = request.getParameter("guestname");
    String phone = request.getParameter("phone");

    if (name != null && phone != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");

            String query = "SELECT guestname, mobile, roomno, aadhar, checkin FROM guest WHERE guestname = ? AND mobile = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, phone);
            ResultSet res = pstmt.executeQuery();

            if (res.next()) {
                String gname = res.getString("guestname");
                String mobile = res.getString("mobile");
                int room = res.getInt("roomno");
                String aadhar = res.getString("aadhar");
                String checkin = res.getString("checkin");

%>
<div class="card">
    <h2>Guest Name: <%= gname %></h2>
    <h2>Mobile Number: <%= mobile %></h2>
    <h2>Room Number: <%= room %></h2>
    <h2>Aadhar Number: <%= aadhar %></h2>
    <h2>Check-in Date: <%= checkin %></h2>
</div>
<%
            } else {
%>
<div class="card">
    <h2 class="error">No guest found with the provided name and mobile number.</h2>
</div>
<%
            }

            res.close();
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
    <h2 class="error">Please provide both the name and mobile number.</h2>
</div>
<%
    }
%>

</body>
</html>
