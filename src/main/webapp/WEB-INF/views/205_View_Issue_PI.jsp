<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ds.vaishu.dao.IssueProcessedDao"%>
<%@page import ="ds.vaishu.model.IssueProcessed"%>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Issue Processed Items</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://t3.ftcdn.net/jpg/07/18/70/88/240_F_718708886_w9hjaiKfirDVNyIQfQovKGc9jdxHrpKA.jpg'); /* Background image URL */
        background-size: cover; /* Cover the entire page */
        background-position: center; /* Center the background image */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        height: 100vh;
    }
    
    header {
        background-color: black;
        color: white;
        padding: 10px 20px;
        display: flex;
        align-items: center;
        justify-content: space-between; /* Space between the home icon and the header title */
        font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
    }

    .home-icon {
        font-size: 24px;
        color: white; /* Ensure the icon color matches the header */
        text-decoration: none; /* Remove underline from the link */
    }

    .header-title {
        font-size: 35px;
        flex-grow: 1; /* Allow the title to take up remaining space */
        text-align: center; /* Center the title text */
    }

    .container {
        width: 100%;
        max-width: 800px; /* Increased width for better readability */
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slightly darker shadow for more depth */
        border-radius: 8px; /* Rounded corners */
        margin: 20px auto; /* Center the container with margin */
    }

    h1 {
        text-align: center;
        font-size: 26px;
        color: #ff6347; /* Tomato color for the table name */
        margin-bottom: 20px;
        font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
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
        background-color: black; /* Black header */
        color: white;
        text-transform: uppercase;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2; /* Zebra striping for better readability */
    }

    tr:hover {
        background-color: #ddd; /* Light gray on hover */
    }

    button {
        background-color: #d9534f; /* Red background */
        color: #ffffff; /* White text */
        border: none;
        padding: 8px 12px;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #c9302c; /* Darker red on hover */
    }

    a {
        color: #333;
        text-decoration: none;
        display: block;
        padding: 12px;
    }

    a:hover {
        background-color: #b9936c; /* Highlight color on hover */
        color: brown;
    }
</style>
</head>
<body>
<header>
    <a href="logPro" class="home-icon"><i class="fas fa-home"></i> Home</a>
    <div class="header-title">Inventory Management</div>
</header>
<div class="container">
    <h1>View Issued Items</h1>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Issuer Name</th>
                <th>Quantity</th>
                <th>Date</th>
                <th>PID</th>
                <th>Item Name</th>
                <th>Time</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% List<IssueProcessed> issueProcesseds = (List<IssueProcessed>)request.getAttribute("issueProcessedList"); %>
            <% if (issueProcesseds != null && !issueProcesseds.isEmpty()) { %>
                <% for(IssueProcessed c : issueProcesseds) { %>
                    <tr>
                        <td><%=c.getIpid()%></td>
                        <td><%=c.getIpname()%></td>
                        <td><%=c.getIpquantity()%></td>
                        <td><%=c.getPdate()%></td>
                        <td><%=c.getPid()%></td>
                        <td><%=c.getPname()%></td>
                        <td><%=c.getPtime()%></td>
                        <td>
                            <form action="deleteIssuePI" method="post">
                                <input type="hidden" name="ipid" value="<%=c.getIpid()%>">
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                <% } %>
            <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
