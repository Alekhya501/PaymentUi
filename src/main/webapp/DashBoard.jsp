<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .header {
            width: 100%;
            max-width: 900px;
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header h2 {
            color: green;
        }
        .logout-btn {
            background: red;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .section {
            width: 100%;
            max-width: 900px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .bank-details, .transactions {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .bank-card {
            border: 2px solid orange;
            padding: 15px;
            border-radius: 10px;
            width: 30%;
            text-align: center;
        }
        .transaction-list {
            width: 100%;
            text-align: left;
            padding: 10px;
        }
        .send-money-btn {
            background: blue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        .plus-button {
            background: green;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
        }
        .detailed-btn {
            background: blue;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h2>Payments Web App</h2>
        <form action="Logout" method="Post">
         <button type="submit" class="logout-btn">Logout</button>
        </form>
       
    </div>
    <% HttpSession hs=request.getSession();
    String uname=(String)hs.getAttribute("uname"); %>
    <div class="section">
        <h3>Welcome <span><%= uname %></span></h3>
        <p>Primary Bank Account No: 1234</p>
        <p>Account Balance: 8000.00</p>
        <p>Wallet Balance: 2000.00</p>
        <a href="sendMoney.jsp"><button class="send-money-btn">Send Money</button></a>
    </div>
    <div class="section bank-details">
        <div class="bank-card">
            <h4>State Bank</h4>
            <p>Bank Acct No: 1234</p>
            <p>Balance:</p>
            <p>IFSC Code:</p>
            <p>Branch:</p>
            <a href="Edit.jsp">Edit</a>
        </div>
        <div class="bank-card">
            <h4>BANK NAME</h4>
            <p>Bank Acct No: 1234</p>
            <p>Balance:</p>
            <p>IFSC Code:</p>
            <p>Branch:</p>
            <a href="#">Edit</a>
        </div>
        <div class="bank-card">
            <a href="AddBank.jsp" class="plus-button">[+]</a>
        </div>
    </div>
    <div class="section transactions">
        <h4>Recent 10 Transactions</h4>
        <div class="transaction-list">
            <p>1000 sent to Sai</p>
            <p>1300 received from Hema</p>
            <p>120 received from 800839</p>
            <p>...</p>
            <a href="DetailedStatement" class="detailed-btn">Detailed Stmt</a>
        </div>
    </div>
</body>
</html>
