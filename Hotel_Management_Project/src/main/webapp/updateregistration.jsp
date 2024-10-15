<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Guest Registration - StarOne Hotel</title>
<style>
    body {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        background: #ffcccb; 
        font-family: Arial, sans-serif;
    }
    table {
        border: 1px solid #000;
        padding: 10px;
        background-color: #87cefa; 
        border-collapse: collapse; 
        border-radius: 8px; 
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2); 
    }
    td {
        padding: 10px;
    }
    input[type="text"] {
        padding: 5px;
        border: 1px solid #ccc; /* Light gray border */
        border-radius: 4px; /* Round input corners */
        width: 100%; /* Full width for better UX */
    }
    input[type="submit"] {
        background-color: #4CAF50; /* Green background */
        color: white; /* White text */
        border: none;
        border-radius: 4px; /* Round button corners */
        padding: 10px 15px; /* Add padding */
        cursor: pointer; 
    }
    input[type="submit"]:hover {
        background-color: #45a049; 
    }
</style>
</head>
<body>
    <h1>Update Guest Registration</h1> 
    <form action="updateregistrationdb.jsp">
        <table>
            <tbody>
                <tr>
                    <td>Enter Room Number:</td>
                    <td><input type="text" placeholder="Enter room number" name="groomno" required></td>
                </tr>
                
                <tr>
                    <td>Enter Guest Mobile Number:</td>
                    <td><input type="text" placeholder="Enter guest mobile number" name="gnumber" required></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update Registration"></td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
