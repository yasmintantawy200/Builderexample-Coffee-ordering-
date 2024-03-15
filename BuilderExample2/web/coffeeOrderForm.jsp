<%-- 
    Document   : coffeeOrderForm
    Created on : Mar 15, 2024, 12:57:06 AM
    Author     : ACER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Coffee Order Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        select, input[type="checkbox"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Customize Your Coffee</h1>
    <form action="CoffeeOrderServlet" method="post">
        Size:
        <select name="size">
            <option value="small">Small</option>
            <option value="medium">Medium</option>
            <option value="large">Large</option>
        </select><br/>
        Type:
        <select name="type">
            <option value="espresso">Espresso</option>
            <option value="latte">Latte</option>
            <option value="cappuccino">Cappuccino</option>
        </select><br/>
        Milk: <input type="checkbox" name="milk" value="true"><br/>
        Sugar: <input type="checkbox" name="sugar" value="true"><br/>
        Whipped Cream: <input type="checkbox" name="whippedCream" value="true"><br/>
        <input type="submit" value="Order">
    </form>
</body>
</html>

