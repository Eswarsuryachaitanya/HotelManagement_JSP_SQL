<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Get Room Number - StarOne Hotel</title>
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
        background: linear-gradient(to right, #ffafbd, #ffc3a0);
        font-family: 'Poppins', sans-serif;
    }
    table {
        border: 1px solid #ddd;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        width: 400px;
        text-align: left;
    }

    td {
        padding: 10px;
        font-size: 16px;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 16px;
    }
    input[type="submit"] {
        padding: 12px;
        border: none;
        background-color: #3498db;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #2980b9;
    }
    @media (max-width: 600px) {
        table {
            width: 90%;
        }

        input[type="text"] {
            font-size: 14px;
        }

        td {
            font-size: 14px;
        }
    }
    a {
        text-decoration: none;
    }

    .abc {
        display: flex;
        justify-content: left;
    }
</style>
</head>
<body>
    <form action="getroomnodb.jsp">
        <table>
            <tbody>
                <tr>
                    <td>Enter Guest Name:</td>
                    <td><input type="text" placeholder="Enter guest name" name="gname" required></td>
                </tr>
                <tr>
                    <td>Enter Guest Mobile Number:</td>
                    <td><input type="text" placeholder="Enter guest mobile number" name="gnumber" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Get Room Number"></td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
