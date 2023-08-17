<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="./common/head.jspf" %>
        <style>
            th {
                text-align: center;
                width: 14.28%;
            }
        </style>
</head>

<body>
    <%@ include file="./common/top.jspf" %>


        <div class="container" style="margin-top:80px">
            <div class="row">
                <div class="col-4">
                    <%@ include file="./common/aside.jspf" %>
                </div>

                <!-- -----------------main----------------- -->
                <div class="col-8 mt-3">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                <th>ZIPCODE</th>
                                <th>CITY</th>
                                <th>COUNTRY</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="member" items="${memberList}" varStatus="loop">
                                <tr>
                                    <td>${member.id}</td>
                                    <td>${member.name}</td>
                                    <td>${member.addr.zipcode}</td>
                                    <td>${member.addr.city}</td>
                                    <td>${member.addr.country}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <!-- -----------------main----------------- -->
            </div>
        </div>


        <%@ include file="./common/bottom.jspf" %>
</body>

</html>