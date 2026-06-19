<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Processed Items Menu</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://t4.ftcdn.net/jpg/08/32/54/89/240_F_832548927_GufaxHZsLIygmIYhJg0wTcy7lsTZ5OWX.jpg'); /* Background image URL */
            background-size: cover; /* Cover the entire screen */
            background-position: center;
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
            text-align: center; /* Center-align the container content */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0 auto; /* Center the table within the container */
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
            display: flex; /* Use flex to align icon and text */
            align-items: center;
            justify-content: center; /* Center-align text and icon */
            padding: 10px;
            margin: 10px 0;
            background-color: #333; /* Dark color for buttons */
            color: #fff;
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
    </style>
</head>
<body>
    <div class="header">
        <h1><i class="fas fa-cogs"></i> Processed Items Menu</h1>
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
                    <td><a href="addPro"><i class="fas fa-plus"></i> Add Processed Items</a></td>
                </tr>
                <tr>
                    <td><a href="viewPI"><i class="fas fa-eye"></i> View Processed Items</a></td>
                </tr>
                <tr>
                    <td><a href="updatePI"><i class="fas fa-edit"></i> Update Processed Items</a></td>
                </tr>
                <tr>
                    <td><a href="viewIssueProcessed"><i class="fas fa-eye-slash"></i> View All Issued Processed Items</a></td>
                </tr>
                <tr>
                    <td><a href="showUnaPI"><i class="fas fa-exclamation-triangle"></i> View All Unavailable Items</a></td>
                </tr>
                <tr>
                    <td><a href="log"><i class="fas fa-sign-out-alt"></i> Log Out</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
