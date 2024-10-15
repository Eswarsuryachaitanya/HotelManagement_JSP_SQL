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
            background: linear-gradient(to right, #ffafbd, #ffc3a0);
            font-family: 'Poppins', sans-serif;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        h2 {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .message {
            font-size: 18px;
            color: #e74c3c;
            font-weight: bold;
        }
        a {
            display: inline-block;
            padding: 12px 20px;
            margin-top: 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="card">
        <%
            String name = request.getParameter("gname");
            String phone = request.getParameter("gnumber");
            if (name != null && phone != null) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");
                    String query = "SELECT roomno, checkin FROM guest WHERE guestname = ? AND mobile = ?";
                    PreparedStatement pstmt = con.prepareStatement(query);
                    pstmt.setString(1, name);
                    pstmt.setString(2, phone);
                    ResultSet res = pstmt.executeQuery();
                    if (res.next()) {
                        int room = res.getInt("roomno");
                        String checkin = res.getString("checkin");

                        %>
                        <h2>Guest Room Number: <%= room %></h2>
                        <h2>Check-in Date: <%= checkin %></h2>
                        <%
                    } else {
                        %>
                        <p class="message">No guest found with the provided name and mobile number.</p>
                        <%
                    }
                    res.close();
                    pstmt.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p class='message'>Error: " + e.getMessage() + "</p>");
                }
            } else {
                %>
                <p class="message">Please provide both name and mobile number.</p>
                <%
            }
        %>
        <a href="StarOne.jsp">Back to Home</a>
    </div>
</body>
</html>
