<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lucida+Handwriting&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-image: url('https://t3.ftcdn.net/jpg/04/63/29/24/240_F_463292493_vKOE3TnJknMoFErDhmbMRz1CdkXmWyNB.jpg'); /* Background image */
            background-size: cover; /* Cover the entire screen */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Keep the image fixed */
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #000000; /* Black header */
            color: #ffffff; /* White text */
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            font-family: 'Poppins', sans-serif;
            display: flex;
            align-items: center;
            padding: 20px 30px;
            height: 80px; /* Adjust height as needed */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Optional: add shadow for better visibility */
        }

        .home-btn {
            color: #ffffff;
            font-size: 24px;
            background: none;
            border: none;
            cursor: pointer;
            margin-right: 15px; /* Adjust margin as needed */
            text-decoration: none; /* Remove underline */
        }

        .home-btn i {
            margin-right: 5px; /* Space between icon and text */
        }

        .header-content {
            display: flex;
            flex: 1; /* Takes up remaining space */
            justify-content: center;
            align-items: center;
        }

        header h1 {
            font-size: 36px;
            font-weight: 600;
            font-family: 'Lucida Handwriting', cursive; /* Cursive font style */
            margin: 0;
            text-align: center;
        }

        .container {
            background-color: #000000; /* Black background */
            margin: 180px auto 20px; 
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 500px;
            margin-top: 100px; /* Adjust to ensure space for the fixed header */
            margin-bottom: 30px;
            z-index: 1; /* Ensure the container is above the background image */
        }

        .form-title {
            margin-bottom: 20px;
            color: white;
            font-size: 24px;
            text-align: center;
        }

        .form-group label {
            font-size: 16px;
            font-weight: 500;
            color: #ffffff; /* White text */
        }

        .form-control {
            background-color: #333333; /* Dark gray background for input fields */
            border: 1px solid #444444; /* Slightly darker border */
            border-radius: 5px;
            padding: 15px; /* Increased padding */
            color: #ffffff; /* White text */
            font-size: 18px; /* Increased font size */
            font-weight: 300;
        }

        .form-control::placeholder {
            color: #bbbbbb; /* Light gray placeholder text */
        }

        .btn-primary {
            background-color: green; /* Blue background */
            color: #ffffff; /* White text */
            border: none;
            border-radius: 5px;
            padding: 10px 20px; /* Adjusted padding */
            font-size: 16px; /* Adjusted font size */
            font-weight: 600;
            cursor: pointer;
            display: block;
            width: 100%;
            margin-top: 20px; /* Spacing from form fields */
        }

        .btn-primary:hover {
            background-color: green; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <header>
        <a href="logPro" class="home-btn">
            <i class="fas fa-home"></i> Home
        </a>
        <div class="header-content">
            <h1>Inventory Management</h1>
        </div>
    </header>

    <div class="container">
        <h2 class="form-title">Change Password</h2>
        <form action="changePassword" method="post">
            <div class="form-group">
                <label for="currentPassword">Current Password</label>
                <input type="password" class="form-control" id="currentPassword" name="email" placeholder="Enter current password" required>
            </div>
            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" class="form-control" id="newPassword" name="password" placeholder="Enter new password" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm New Password</label>
                <input type="password" class="form-control" id="confirmPassword" name="npassword" placeholder="Confirm new password" required>
            </div>
            <button type="submit" class="btn btn-primary">Change Password</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
