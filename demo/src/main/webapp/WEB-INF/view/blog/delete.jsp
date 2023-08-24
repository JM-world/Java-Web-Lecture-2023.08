<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="./common/head.jspf" %>
</head>
<body>
	<%@ include file="./common/top.jspf" %>

    <div class="container" style="margin-top:80px">
        <div class="row">
            <%@ include file="./common/aside.jspf" %>
            <!-- ================= Main ================= -->
            <div class="col-9">
            <h3>블로그 삭제</h3>
            <hr>
	            <div class="row">
	            	<div class="col-3"></div>
	            	<div class="col-6">
		            	<div class="card border-warning">
		    				<div class="card-body" style="text-align: center;">
						      <strong class="card-title">삭제하시겠습니까?</strong>
						      <br>
						      <p class="card-text mt-4">삭제하시려면 "삭제"를 누르시오.</p>
						      <button class="btn btn-danger" onclick="location.href='/demo/blog/deleteConfirm/${bid}'">삭제</button>
						      <button class="btn btn-secondary" onclick="location.href='/demo/blog/detail/${bid}?option=DNI'">취소</button>
					    	</div>
						</div>
					</div>
					<div class="col-3"></div>
				</div>
            </div>
			<!-- ================= Main ================= -->
        </div>
    </div>

	<%@ include file="./common/bottom.jspf" %>
</body>
</html>