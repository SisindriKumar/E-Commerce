<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        header, footer {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }
        main {
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }
        select, input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        label {
            font-weight: bold;
            color: #333;
        }
        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: block;
            width: 100%;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        /* Payment method details styling */
        .paymentDetails {
            background-color: #EFF396;
            border: 1px solid #ccc;
            border-radius: 20px;
            padding: 20px;
            margin-top: 20px;
            display: none;
        }
    </style>
</head>
<body>
    <header>
        <h1>Payment For Your Products</h1>
    </header>
    
    <main>
        <label for="paymentMethod">Select Payment Method:</label>
        <select id="paymentMethod">
            <option value="cashOnDelivery">Cash on Delivery</option>
            <option value="payByCard">Pay by Card</option>
            <option value="upiTransaction">UPI Transaction</option>
        </select>
        
        <div id="cashOnDeliveryDetails" class="paymentDetails">
            <p>Amount: $<%= request.getAttribute("total") %></p>
            
            <button type="submit">Proceed with Cash on Delivery</button>
            
            <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" required></textarea><br>
        </div>
        
        <div id="payByCardDetails" class="paymentDetails">
            <form action="process-payment.jsp" method="post">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required><br>
                
                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" required><br>
                
                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required><br>
                
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" required></textarea><br>
                
                <button type="submit">Proceed with Card Payment</button>
            </form>
        </div>
        
        <div id="upiTransactionDetails" class="paymentDetails">
            <form action="process-payment.jsp" method="post">
                <label for="mobileNumber">Mobile Number:</label>
                <input type="text" id="mobileNumber" name="mobileNumber" required><br>
                
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" required></textarea><br>
                
                <button type="submit">Proceed with UPI Transaction</button>
            </form>
        </div>
    </main>
    
    <footer>
        <!-- Your footer content here -->
    </footer>
    
    <script>
        document.getElementById('paymentMethod').addEventListener('change', function() {
            var paymentMethod = this.value;
            var paymentDetails = document.getElementsByClassName('paymentDetails');
            for (var i = 0; i < paymentDetails.length; i++) {
                paymentDetails[i].style.display = 'none';
            }
            document.getElementById(paymentMethod + 'Details').style.display = 'block';
        });
    </script>
</body>
</html>





 
 
  