<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Welcome</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
			 body {
			    font-family: Arial, sans-serif;
			    background-image: url('https://t3.ftcdn.net/jpg/08/33/36/74/240_F_833367450_Y8LcueG5MUCyb56IysuECW4Leh1q2vP4.jpg'); /* Background image URL */
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
			    padding: 10px;
			    margin: 10px 0;
			    background-color: #333; /* Dark color for buttons */
			    color: #fff;
			    text-decoration: none;
			    border-radius: 5px;
			    transition: background-color 0.3s, transform 0.3s;
			    justify-content: center; /* Center-align text within the button */
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
        <h1><i class="fas fa-cogs"></i> Raw Material Menu</h1>
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
                    <td><a href="addRaw"><i class="fas fa-plus"></i> Add Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="viewRaw"><i class="fas fa-eye"></i> View All Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="updRaw"><i class="fas fa-edit"></i> Update Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="issueRaw"><i class="fas fa-box-open"></i> Issue Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="viewIssueRaw"><i class="fas fa-archive"></i> View All Issued Raw Material</a></td>
                </tr>
                <tr>
                    <td><a href="showUnavRaw"><i class="fas fa-exclamation-triangle"></i> View Unavailable Raw Material</a></td>
                </tr>
               
                <tr>
                    <td><a href="log"><i class="fas fa-sign-out-alt"></i> Log Out</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
