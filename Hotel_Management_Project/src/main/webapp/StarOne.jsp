<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Welcome to StarOne Hotel </title>
<style>
/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styling */
body {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    background: linear-gradient(to right, #ffafbd, #ffc3a0);
    font-family: 'Poppins', sans-serif;
    padding: 20px;
    position: relative;
}

/* Body Background Image */
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
    opacity: 0.5;
    z-index: -1;
    filter: blur(5px);
}

/* Header Styling */
h1 {
    font-size: 48px;
    margin-bottom: 30px;
    color: #2c3e50;
    text-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

/* Table Styling */
table {
    border-collapse: collapse;
    width: 100%;
    max-width: 600px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 15px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    z-index: 1;
}

/* Table Cells */
td {
    padding: 20px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    font-size: 20px;
    color: #34495e;
    transition: background-color 0.3s ease;
}

/* Hover Effects for Table Cells */
td:hover {
    background-color: #f1f1f1;
}

/* Links Styling */
a {
    text-decoration: none;
    color: #e74c3c;
    font-weight: bold;
    transition: color 0.3s ease, transform 0.2s;
}

a:hover {
    color: #2ecc71;
    transform: scale(1.05);
}

/* Responsive Media Query */
@media (max-width: 600px) {
    table {
        width: 90%;
    }
    td {
        font-size: 18px;
        padding: 15px;
    }
    h1 {
        font-size: 32px;
    }
}
</style>
</head>
<body>

    <h1>WELCOME TO StarOne HOTEL</h1>
    <table >
        <tr>
            <td>Reserve a room:</td>
            <td><a href="reserve_room.jsp">Reserve Room</a></td>
        </tr>
        <tr>
            <td>View registration:</td>
            <td><a href="viewregistration.jsp">View Registration</a></td>
        </tr>
        <tr>
            <td>Get Room Number:</td>
            <td><a href="getroomno.jsp">Get Room Number</a></td>
        </tr>
        <tr>
            <td>Update Registration:</td>
            <td><a href="updateregistration.jsp">Update Registration</a></td>
        </tr>
        <tr>
            <td>Delete Registration:</td>
            <td><a href="deleteregistration.jsp">Delete Registration</a></td>
        </tr>
    </table>

</body>
</html>
