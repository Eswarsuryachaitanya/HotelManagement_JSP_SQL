<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>StarOne Hotel - View Registration</title>
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
    background: linear-gradient(to right, #ff9966, #ff5e62);
    font-family: 'Poppins', sans-serif;
    padding: 20px;
    position: relative;
}

body::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('https://www.travelandleisure.com/thmb/rN0WUat7yHF4sGXcdqZqx7BH12U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/peninsula-manila-025-TOPHOTELSWB21-701643345970426694bf0f94bbe06595.jpg');
    background-size: cover;
    background-position: center;
    opacity: 0.4;
    z-index: -1;
    filter: blur(3px);
}
form {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    max-width: 500px;
    width: 100%;
}
h1 {
    text-align: center;
    margin-bottom: 30px;
    color: #2c3e50;
    font-size: 32px;
    letter-spacing: 1px;
    text-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}
table {
    width: 100%;
    border-spacing: 0 15px;
}
td {
    padding: 10px;
    font-size: 16px;
    color: #2c3e50;
}
input[type="text"], input[type="number"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    outline: none;
    transition: border-color 0.3s;
}
input[type="text"]:focus, input[type="number"]:focus {
    border-color: #3498db;
}
input[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #e74c3c;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}
input[type="submit"]:hover {
    background-color: #2ecc71;
}
.abc {
    position: absolute;
    top: 20px;
    left: 20px;
}

.abc a {
    text-decoration: none;
    font-size: 18px;
    color: #fff;
    padding: 10px 15px;
    background-color: rgba(0, 0, 0, 0.3);
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.abc a:hover {
    background-color: #3498db;
}

/* Responsive Media Query */
@media (max-width: 600px) {
    form {
        padding: 30px;
    }
    h1 {
        font-size: 28px;
    }
    td {
        font-size: 14px;
    }
}
</style>
</head>
<body>

<div class="abc">
    <a href="StarOne.jsp">HOME</a>
</div>

<form action="viewregistrationdb.jsp">
    <h1>View Registration</h1>
    <table>
        <tr>
            <td>Enter Name:</td>
            <td><input type="text" placeholder="Enter Guest Name" name="guestname" required></td>
        </tr>
        <tr>
            <td>Enter Mobile Number:</td>
            <td><input type="number" placeholder="Enter Mobile Number" name="phone" required></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

</body>
</html>
