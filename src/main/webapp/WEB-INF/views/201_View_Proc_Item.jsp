<%@page import="ds.vaishu.dao.ProcessedItemDao"%>
<%@page import ="ds.vaishu.model.ProcessedItem"%>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Processed Items</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.qad.com/blog/wp-content/uploads/2023/02/2_14_2023_A.jpg'); /* Background image URL */
            background-size: cover; /* Cover the entire page */
            background-position: center; /* Center the background image */
            background-attachment: fixed; /* Keep the background fixed */
            margin: 0;
            padding: 0;
        }

        .header 
        {
        	
            background-color: black; /* Black background for the header */
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure header is above other content */
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
        }

        .header .home-btn 
        {
            position: absolute;
            left: 20px;
            top: 15px;
            color: white;
            text-decoration: none;
            font-size: 20px;
        }

        .header .home-btn i
         {
            vertical-align: middle;
            height: 20px;
        }

		    .container {
		    max-width: 1200px;
		    margin: 150px auto 40px; /* Margin to shift the container down */
		    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
		    padding: 40px; /* Increased padding for more space */
		    border-radius: 8px;
		    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		}
		
		table {
		    width: 100%;
		    border-collapse: collapse;
		    margin-top: 40px; /* Increased space between the table and container's top */
		    background-color: rgba(255, 255, 255, 0.8); /* Transparent background */
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


        .container h1 {
            text-align: center;
            font-size: 28px;
            color: #ff6347; /* Tomato color for the table name */
            margin-bottom: 20px;
            font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px; /* Adds space between the table and container */
            background-color: rgba(255, 255, 255, 0.8); /* Transparent background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: black; /* Black background for table headers */
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray background for even rows */
        }

        tr:hover {
            background-color: #f1f1f1; /* Light gray on hover */
        }

        button {
            background-color: #d9534f; /* Red background */
            color: white; /* White text */
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

    <div class="header">
        <a href="logPro" class="home-btn">
            <i class="fas fa-home"></i> Home
        </a>
        <h1>Inventory Management</h1>
    </div>

    <div class="container">
        <h1>View Processed Items</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Cost Per Unit</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Unit</th>
                    <th>Issue</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% List<ProcessedItem> processedItems = (List<ProcessedItem>)request.getAttribute("procList"); %>
                <% if (processedItems != null && !processedItems.isEmpty()) { %>
                    <% for (ProcessedItem c : processedItems) { %>
                        <tr>
                            <td><%= c.getPid() %></td>
                            <td><%= c.getPcost() %></td>
                            <td><%= c.getPname() %></td>
                            <td><%= c.getPquantity() %></td>
                            <td><%= c.getPunit() %></td>
                            <td><a href="issueProcessed?Pid=<%= c.getPid() %>">Issue</a></td>
                            <td>
                                <form action="deletePI" method="post">
                                    <input type="hidden" name="pid" value="<%= c.getPid() %>">
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
