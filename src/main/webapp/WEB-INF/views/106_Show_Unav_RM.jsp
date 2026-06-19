<%@page import="ds.vaishu.model.RawMaterial" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Unavailable</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://st.depositphotos.com/9999814/52407/i/1600/depositphotos_524071248-stock-photo-smart-warehouse-management-system-with.jpg'); /* Background image URL */
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
        font-size: 15px; 
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
    <a href="logRaw" class="home-icon"><i class="fas fa-home"></i> Home</a>
    <div class="header-title">Inventory Management</div>
</header>
<div class="container">
    <h1>View Unavailable Raw Material</h1>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Unit</th>
                <th>Cost Per Unit</th>
            </tr>
        </thead>
        <tbody>
            <% List<RawMaterial> rawMaterials = (List<RawMaterial>)request.getAttribute("unavRawList"); %>
            <% if (rawMaterials != null && !rawMaterials.isEmpty()) { %>
                <% for (RawMaterial r : rawMaterials) {
                    if (r.getRquantity() == 0) { %>
                        <tr>
                            <td><%= r.getRid() %></td>
                            <td><%= r.getRname() %></td>
                            <td><%= r.getRquantity() %></td>
                            <td><%= r.getRunit() %></td>
                            <td><%= r.getRcost() %></td>
                        </tr>
                <% } } %>
            <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
