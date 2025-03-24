<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Statement Request Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            margin: 0;
            padding: 20px;
        }
        .title-box {
            border: 3px solid red;
            padding: 15px;
            font-size: 24px;
            font-weight: bold;
            color: black;
            display: inline-block;
            background: white;
            border-radius: 8px;
        }
        .form-container {
            border: 3px solid black;
            padding: 25px;
            width: 50%;
            margin: auto;
            text-align: left;
            background: white;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
        }
        label {
            font-size: 16px;
            font-weight: bold;
            color: black;
            display: inline-block;
            width: 150px;
        }
        input[type="date"],
        input[type="text"] {
            width: calc(100% - 160px);
            padding: 8px;
            border: 2px solid black;
            border-radius: 5px;
            outline: none;
            margin-bottom: 15px;
        }
        .checkbox-group {
            margin-top: 10px;
        }
        .checkbox-group input {
            margin-right: 5px;
            border: 2px solid black;
        }
        .btn {
            background: blue;
            border: 2px solid black;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 15px;
            transition: 0.3s;
        }
        .btn:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
    <div class="title-box">Statement Request Page</div>
    <br><br>
    <div class="form-container">
        <form action="StatementServlet" method="post">
            <label>Start DATE:</label>
            <input type="date" name="start_date" required>
            <br><br>
            <label>End DATE:</label>
            <input type="date" name="end_date" required>
            <br><br>

            <div class="checkbox-group">
                <input type="checkbox" name="txn_type" value="all"> <label>ALL</label>
                <input type="checkbox" name="txn_type" value="credit"> <label>Credit Txns</label>
                <input type="checkbox" name="txn_type" value="debit"> <label>Debit Txns</label>
                <input type="checkbox" name="txn_type" value="wallet"> <label>Wallet Txns</label>
                <input type="checkbox" name="txn_type" value="bank"> <label>Bank Txns</label>
            </div>

            <br>
            <button type="submit" class="btn">GENERATE</button>
        </form>
    </div>
</body>
</html>

