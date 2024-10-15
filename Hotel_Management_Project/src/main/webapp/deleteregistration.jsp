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
            flex-direction: column;
            background: linear-gradient(to right, #ffafbd, #ffc3a0);
            font-family: 'Poppins', sans-serif;
        }
        .card {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            text-align: center;
        }

        h1 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-spacing: 0;
            margin-bottom: 20px;
        }

        td {
            padding: 15px 10px;
            font-size: 18px;
            color: #34495e;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #e74c3c;
            color: #fff;
            padding: 12px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .card {
                padding: 30px;
            }

            h1 {
                font-size: 24px;
            }

            td {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Delete Registration</h1>
        <form action="deleteregistrationdb.jsp">
            <table>
                <tr>
                    <td>Enter Mobile Number:</td>
                    <td><input type="number" name="phone" placeholder="Enter Mobile Number" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Delete Registration">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
