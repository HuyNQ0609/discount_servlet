<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    h2 {
        color: #800101;
        margin-left: 200px;
    }

    form {
        width: 250px;
        height: 180px;
        padding: 20px;
        border: 3px solid black;
        border-radius: 5px;
        margin-left: 200px;
    }

    .data {
        width: 200px;
        margin-left: 20px;
    }

    #buttons {
        margin-left: 60px;
    }

</style>
<body>
<h2>Product Discount Calculator</h2>
<form action="/calculate" method="post">
    <div class="data">
        <label style="font-size: 16px; font-weight: bold">Product Description:</label><br>
        <label>
            <input style="width: 200px; height: 20px" type="text" name="description" placeholder="Enter description: "/><br>
        </label>
        <label style="font-size: 16px; font-weight: bold">List Price:</label><br>
        <label>
            <input style="width: 200px; height: 20px" type="text" name="price" placeholder="Enter price: "/><br>
        </label>
        <label style="font-size: 16px; font-weight: bold">Discount Percent:</label><br>
        <label>
            <input style="width: 200px; height: 20px" type="text" name="discount" placeholder="Enter percent: "/><br>
        </label>
    </div>
    <div id="buttons">
        <br>
        <label>
            <input type="submit" value="Calculate Discount"/>
        </label>
    </div>
</form>
</body>
</html>