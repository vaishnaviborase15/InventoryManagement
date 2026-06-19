<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Welcome</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
           background-image: url('https://t3.ftcdn.net/jpg/07/32/07/00/240_F_732070085_Wi59ouLfJXdEVZHfP8jM25s91axgbVcR.jpg'); /* Background image URL */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            color: #fff; /* White text color for better readability */
        }
        .header {
            background-color: black;
            color: white;
            text-align: center;
            padding: 20px;
            font-family: 'Lucida Handwriting', cursive;
        }
        .container {
            max-width: 600px;
            margin: 40px auto; /* Adds space between the header and container */
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent dark background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px; /* Adds space between the table and container */
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50; /* Green color for header */
            color: white;
            text-transform: uppercase;
        }
        td a {
            display: block;
            padding: 10px;
            margin: 10px 0;
            background-color: #333; /* Dark color for buttons */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }
        td a:hover {
            background-color: #555; /* Slightly lighter on hover */
            transform: scale(1.05); /* Subtle pop-up effect */
        }
        td a i {
            margin-right: 10px;
        }
        .container {
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1><i class="fas fa-cogs"></i> Admin Panel</h1>
    </div>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>MENU</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="welcomeRaw"><i class="fas fa-box"></i> Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="welcomePr"><i class="fas fa-boxes"></i> Processed Material</a></td>
                </tr>
                <tr>
                    <td><a href="changeP"><i class="fas fa-key"></i> Change Password</a></td>
                </tr>
                <tr>
                    <td><a href="logInd"><i class="fas fa-sign-out-alt"></i> Log Out</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
