<%--
    Document   : stock
    Created on : 11 Nov 2020, 12:42:54
    Author     : Mark Crowe <https://github.com/markcrowe-com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head>
		<title>Sales stock</title>
		<link rel="stylesheet" href="assets/css/style.css" type="text/css" />
	</head>
	<body>
        <h1>All Sales Stock</h1>
        <br><br>
        <table width='1000' border='2'>
            <tr>
                <td>Listing Number</td>
                <td>Year</td>
                <td>Reg</td>
                <td>Make</td>
                <td>Model</td>
                <td>Colour</td>
                <td>Buy Price</td>
                <td>List Price</td>
                <td>Odometer</td>
                <td>(KPH)</td>
                <td>Engine</td>
                <td>Fuel</td>
                <td>Transmission</td>
                <td>Body</td>
                <td>ISO fix</td>
                <td>Motor Tax</td>
                <td>Previous Owners</td>
                <td>Sales Person</td>
                <td>Sales Person Phone</td>
                <td>Sales Person Email</td>
                <td>Sales Person Fax</td>
                <td>Last Previous Owners Name</td>
                <td>Last Previous Owner Address</td>
                <td>Last Previous Owner Phone</td>
                <td>Full Service History</td>
                <td> Note</td>
            </tr>
            <c:forEach items="${list}" var="item">
                <tr>
                    <td><a href="stockdetail?id=${item.stockId}">${item.listingNumber}</a></td>
                    <td>${item.year}</td>
                    <td>${item.reg}</td>
                    <td>${item.make}</td>
                    <td>${item.model}</td>
                    <td>${item.colour}</td>
                    <td>${item.buyPrice}</td>
                    <td>${item.listPrice}</td>
                    <td>${anStock.odometerKPH}</td>
                    <td>${item.kph}</td>
                    <td>${item.engine}</td>
                    <td>${item.fuel}</td>
                    <td>${item.transmission}</td>
                    <td>${item.body}</td>
                    <td>${item.isofix}</td>
                    <td>${item.motorTax}</td>
                    <td>${item.previousOwners}</td>
                    <td>${item.salesPerson}</td>
                    <td>${item.salesPersonPhone}</td>
                    <td>${item.salesPersonEmail}</td>
                    <td>${item.salesPersonFax}</td>
                    <td>${item.lastPreviousOwnersName}</td>
                    <td>${item.lastPreviousOwnerAddress}</td>
                    <td>${item.lastPreviousOwnerPhone}</td>
                    <td>${item.fullServiceHistory}</td>
                    <td>${item.note}</td>
					<c:choose>
                        <c:when test="${anAccount.balance < 0}">
                            <td bgcolor=#FF0000><fmt:formatNumber value="${anAccount.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/>
                            </td>
                        </c:when>
                        <c:otherwise>
                            <td><fmt:formatNumber value="${anAccount.balance}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/>
                            </td>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>