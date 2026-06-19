<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Processed Item</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-image: url('https://etradeforall.org/wp-content/uploads/2021/07/ecomm_shopping_md.jpg'); /* Add your background image here */
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
            max-width: 600px;
            margin-top: 100px; /* Adjust top margin for header */
            margin-bottom: 20px; /* Bottom margin */
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .form-title {
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: 500;
            color: #000000; /* Black text */
            text-align: center;
        }

        .form-group label {
            font-size: 16px;
            font-weight: 500;
            color: #000000; /* Black text */
        }

        .form-control {
            background-color: #f5f5f5; /* Light gray background for input fields */
            border: 1px solid #dcdcdc; /* Light gray border */
            border-radius: 5px;
            padding: 10px;
            color: #333333; /* Dark text */
            font-size: 16px;
            font-weight: 300;
        }

        .form-control::placeholder {
            color: #999999; /* Light gray placeholder text */
        }

        .btn-primary {
            background-color: #28a745; /* Green background */
            color: #ffffff; /* White text */
            border: none;
            border-radius: 5px;
            padding: 15px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
            color: #ffffff;
        }

        .text-center {
            text-align: center;
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
        <h2 class="form-title">Add Processed Item</h2>
        
        <form action="addProItem" method="post">
            <div class="form-group">
                <label for="materialName">Name</label>
                <input type="text" class="form-control" id="materialName" name="pname" placeholder="Enter material name" required>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" class="form-control" id="quantity" name="pquantity" placeholder="Enter quantity" required>
            </div>
            <div class="form-group">
                <label for="unit">Unit</label>
                <select class="form-control" id="unit" name="punit" required>
                    <option value="pcs">Pcs</option>
                    <option value="litre">Litre</option>
                    <option value="kg">Kg</option>
                </select>
            </div>
            <div class="form-group">
                <label for="costPerUnit">Cost per Unit</label>
                <input type="number" class="form-control" id="costPerUnit" name="pcost" placeholder="Enter cost per unit" step="0.01" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Add Items</button>
            </div>
        </form>
    </div>
</body>
</html>
