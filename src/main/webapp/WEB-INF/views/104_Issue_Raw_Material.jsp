<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Raw Material</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-image: url('https://t4.ftcdn.net/jpg/08/14/94/77/240_F_814947784_srmqYpd8YDTW2Nyfi0xNFZ8iVVLS0wk1.jpg'); /* New background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .header {
            background-color: #000000;
            color: #ffffff;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .header .logo {
            font-size: 20px;
            color: #ffffff;
            text-decoration: none;
        }

        .header .title {
            flex-grow: 1;
            text-align: center;
            font-size: 24px;
            font-weight: 500;
            color: #ffffff;
          font-family: 'Lucida Handwriting', cursive;
        }

        .container {
            max-width: 600px;
            margin: 20px auto; /* Adjust margin to position the form */
            padding: 20px;
            background-color: #000000; /* Black background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .form-title {
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: 500;
            color: #ffffff;
            text-align: center;
        }

        .form-group label {
            font-size: 16px;
            font-weight: 500;
            color: #ffffff;
        }

        .form-control {
            background-color: #333333;
            border: 1px solid #444444;
            border-radius: 5px;
            padding: 15px;
            color: #ffffff;
            font-size: 18px;
            font-weight: 300;
        }

        .form-control::placeholder {
            color: #bbbbbb;
        }

        .btn-primary {
            background-color: #28a745;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #218838;
            color: #ffffff;
        }

        .home-btn {
            font-size: 20px;
            color: #ffffff;
            text-decoration: none;
        }

        .home-btn i {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <header class="header">
        <a href="logRaw" class="home-btn">
            <i class="fas fa-home"></i> Home
        </a>
        <div class="title">Inventory Management</div>
    </header>
    
    <div class="container">
        <h2 class="form-title">Issue Raw Material</h2>
        <% if (request.getAttribute("error") != null) { %>
            <div class="alert alert-danger"><%= request.getAttribute("error") %></div>
        <% } %>
        <form action="issueNewRaw" method="post">
            <div class="form-group">
                <label for="rawId">Raw Materials Issued ID</label>
                <input type="text" class="form-control" id="rawId" name="irid" placeholder="Enter Issued raw material ID" required>
            </div>
            
            <div class="form-group">
                <label for="rawId">Raw ID</label>
                <input type="text" class="form-control" id="rawId" name="rid" placeholder="Enter raw material ID" required>
            </div>
            
            <div class="form-group">
                <label for="rawName">Raw Name</label>
                <input type="text" class="form-control" id="rawName" name="rname" placeholder="Enter raw material name" required>
            </div>
            
            <div class="form-group">
                <label for="issuerName">Issuer Name</label>
                <input type="text" class="form-control" id="issuerName" name="irname" placeholder="Enter issuer's name" required>
            </div>
            
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" class="form-control" id="quantity" name="irquantity" placeholder="Enter quantity" required>
            </div>
            
            <div class="form-group">
                <label for="issueDate">Issue Date</label>
                <input type="date" class="form-control" id="issueDate" name="rdate" required>
            </div>
            
            <div class="form-group">
                <label for="issueTime">Issue Time</label>
                <input type="time" class="form-control" id="issueTime" name="rtime" required>
            </div>
            
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Issue Material</button>
            </div>
        </form>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
