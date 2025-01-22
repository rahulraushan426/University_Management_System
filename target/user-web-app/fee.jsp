<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
    // Session check
    if (session == null || session.getAttribute("userEmail") == null) {
        response.sendRedirect("Login.jsp?returnUrl=FeeServlet");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fee Details | Galgotias University</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background: #343a40;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 22px;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            max-width: 600px;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        .fee-details {
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .fee-amount {
            font-size: 32px;
            color: #007bff;
            margin: 20px 0;
            text-align: center;
        }
        .error-message {
            color: #dc3545;
            text-align: center;
            padding: 10px;
        }
        .back-button {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .footer {
            text-align: center;
            padding: 20px;
            background: #343a40;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>Galgotias University - Fee Details</header>

<div class="container">
    <div class="fee-details">
        <c:choose>
            <c:when test="${foundFee == true}">
                <div class="fee-amount">
                    Total Fee Amount: ₹ <fmt:formatNumber value="${feeAmount}" pattern="#,##0.00"/>
                </div>
            </c:when>
            <c:otherwise>
                <div class="error-message">
                    ⚠️ ${errorMessage}
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <a href="index.jsp" class="back-button">Back to Home</a>
</div>

<div class="footer">
    © 2025 Galgotias University | All Rights Reserved
</div>

</body>
</html>
