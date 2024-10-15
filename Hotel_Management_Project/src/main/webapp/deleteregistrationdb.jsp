<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Registration - StarOne Hotel</title>
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
        }

        h1 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            color: #34495e;
            margin-bottom: 15px;
        }

        .message {
            font-size: 20px;
            color: #e74c3c;
            font-weight: bold;
        }

        /* Button Styling */
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
        <h1>Delete Registration</h1>
        <p>Processing your request...</p>

        <%
            String phone = request.getParameter("phone");
            if (phone != null && !phone.trim().isEmpty()) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");

                    String query = "DELETE FROM guest WHERE mobile = ?";
                    PreparedStatement pre = con.prepareStatement(query);
                    pre.setString(1, phone);

                    int a = pre.executeUpdate();

                    if (a > 0) {
                        // Success message
                        %>
                        <p class="message">Registration Deleted Successfully!</p>
                        <%
                    } else {
                        // Failure message
                        %>
                        <p class="message">No Registration Found for the Given Mobile Number.</p>
                        <%
                    }

                    pre.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p class='message'>Error: " + e.getMessage() + "</p>");
                }
            } else {
                %>
                <p class="message">Please provide a valid mobile number.</p>
                <%
            }
        %>
        <a href="StarOne.jsp">Back to Home</a>
    </div>
</body>
</html>
