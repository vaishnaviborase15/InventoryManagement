<%@page import="ds.vaishu.dao.RawMaterialDao"%>
<%@page import="ds.vaishu.model.RawMaterial"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Raw Material Items</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-image: url('https://www.qad.com/blog/wp-content/uploads/2023/02/2_14_2023_A.jpg'); /* Background image URL */
            background-size: cover; /* Cover the entire screen */
            background-position: center;
            background-attachment: fixed; /* Keep the background fixed */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #000; /* Opaque background for the header */
            font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
            color: white;
            padding: 15px;
            text-align: center;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000; /* Ensure header is above other content */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .header .home-btn {
            position: absolute;
            left: 20px;
            top: 15px;
            color: white;
            text-decoration: none;
            font-size: 20px;
        }
        .header .home-btn i {
            vertical-align: middle;
            height: 20px;
        }
        .container {
            max-width: 1200px;
            margin: 150px auto 40px; /* Margin to shift the container down */
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            text-align: center;
            font-size: 26px;
            color: #ff6347; /* Tomato color for the table name */
            margin-bottom: 20px;
            font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: black;
            color: #ffffff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
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

    <div class="header">
        <a href="logRaw" class="home-btn">
            <i class="fas fa-home">Home</i>
        </a>
        <h1>Inventory Management</h1>
    </div>

    <div class="container">
        <h1>View Raw Material Items</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Unit</th>
                    <th>Cost Per Unit</th>
                    <th>Issue</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <% List<RawMaterial> rawMaterials = (List<RawMaterial>)request.getAttribute("rawList"); %>
                <% if (rawMaterials != null && !rawMaterials.isEmpty()) { %>
                    <% for (RawMaterial c : rawMaterials) { %>
                        <tr>
                            <td><%= c.getRid() %></td>
                            <td><%= c.getRname() %></td>
                            <td><%= c.getRquantity() %></td>
                            <td><%= c.getRunit() %></td>
                            <td><%= c.getRcost() %></td>
                            <td><a href="issueRaw?Rid=<%= c.getRid() %>">Issue</a></td>
                            <td>
                                <form action="delRaw" method="post">
                                    <input type="hidden" name="rid" value="<%= c.getRid() %>">
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
