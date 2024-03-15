<%-- 
    Document   : orderConfirmation
    Created on : Mar 15, 2024, 12:52:45 AM
    Author     : ACER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        h1, h2 {
            color: #333;
            text-align: center;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thank You for Your Order!</h1>
        <h2>Order Summary:</h2>
        <ul>
            <li>Size: ${coffeeOrderForm.size}</li>
            <li>Type: ${coffeeOrderForm.type}</li>
            <li>Milk: ${coffeeOrderForm.milk}</li>
            <li>Sugar: ${coffeeOrderForm.sugar}</li>
            <li>Whipped Cream: ${coffeeOrderForm.whippedCream}</li>
        </ul>
    </div>
</body>
</html>


