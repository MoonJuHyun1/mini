<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Train Search</title>
</head>
<body>
    <form method="get" action="/train/search">
        출발역:
        <input type="text" name="departureStation">
        도착역:
        <input type="text" name="arrivalStation">
        <button type="submit">검색</button>
    </form>
    <br>
    <table>
        <thead>
        <tr>
            <th>열차명</th>
            <th>출발역</th>
            <th>도착역</th>
            <th>출발시간</th>
            <th>도착시간</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="train" items="${trains}">
            <tr>
                <td>${train.trainName}</td>
                <td>${train.departureStation}</td>
                <td>${train.arrivalStation}</td>
                <td>${train.departureTime}</td>
                <td>${train.arrivalTime}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>
