<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="./common/head.jspf" %>
        <style> th, th { text-align: center; } </style>
</head>

<body>
    <%@ include file="./common/top.jspf" %>


        <div class="container" style="margin-top:80px">
            <div class="row">
                <div class="col-4">
                    <%@ include file="./common/aside.jspf" %>
                </div>

                <!-- -----------------main----------------- -->
                <div class="col-8 ">
                	<div class="row">
                	<h2>Member List</h2>
                	<hr>
                	<div class="col-1"></div>
                	<div class="col-10">
	                    <table class="table table-bordered table-striped">
	                        <thead>
	                            <tr>
	                                <th style="width: 6%">NO.</th>
	                                <th style="width: 14%">ID</th>
	                                <th style="width: 20%">NAME</th>
	                                <th style="width: 20%">ZIPCODE</th>
	                                <th style="width: 20%">CITY</th>
	                                <th style="width: 20%">COUNTRY</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <c:forEach var="member" items="${memberList}" varStatus="loop">
	                                <tr>
	                                	<td>${loop.count}</td>
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
                	</div>
                	<div class="col-1"></div>
                </div>

                <!-- -----------------main----------------- -->
            </div>
        </div>


        <%@ include file="./common/bottom.jspf" %>
</body>

</html>