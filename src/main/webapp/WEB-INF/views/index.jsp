<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory Management</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background: url('https://t4.ftcdn.net/jpg/09/02/75/05/240_F_902750586_4KJZdkNQTavRCLe4zOdWsq0bicwHZ9yZ.jpg');
        background-size: cover;
        color: #black;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        background: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }
    h1 {
        text-align: center;
        font-size: 36px;
        font-weight: bold;
        font-style: italic;
        font-family: 'Lucida Handwriting', cursive;
        color: black; /* Bootstrap yellow */
    }
    h3 {
        text-align: center;
        font-size: 24px;
        font-weight: bold;
        color: #444;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 15px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 15px;
        background: #ff4d4d;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background: #ff1a1a;
    }
    a {
        color: #007bff;
        display: block;
        text-align: center;
        margin-top: 10px;
    }
    .header, .footer {
        background: rgba(255, 255, 255, 0.8);
        color: #444;
        padding: 20px 0;
        text-align: center;
    }
    .side-menu {
        position: fixed;
        top: 0;
        left: 0;
        width: 200px;
        height: 100%;
        background: #333;
        padding-top: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .side-menu a {
        color: #fff;
        padding: 15px;
        text-decoration: none;
        width: 100%;
        text-align: center;
        font-size: 18px;
    }
    .side-menu a:hover {
        background: #444;
    }
    
    }
    .fa-power-off {
        margin-right: 10px;
    }
</style>
</head>
<body>

    <div class="header">
        <h1>Inventory Management</h1>
    </div>


    <div class="container">
        <h3>Admin Login</h3>
        <form action="loginAdmin" method="post">
            <input type="text" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <input type="submit" value="Login">
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 Vaishnavi Borase. All rights reserved.</p>
    </div>

</body>
</html>