<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>

<head>
	<%@ include file="./common/head.jspf"%>
	<style>
		td, th {
			text-align: center;
		}
	</style>
	<script>
		function search() {
			let field = document.getElementById('field').value;
			let query = document.getElementById('query').value;
			//console.log("search()", field, query);
			location.href = '/demo/pocketMon/list?f=' + field + '&q=' + query;
		}
	</script>
</head>

<body>
	<%@ include file="./common/top.jspf"%>


	<div class="container" style="margin-top: 80px">
		<div class="row">
			<%@ include file="./common/aside.jspf"%>

			<!-- -----------------main----------------- -->
			<div class="col-9">
				<table class="table table-sm table-borderless">
					<tr>
						<td style="width: 50%; text-align: left;">
							<h3>
								<strong>포켓몬 목록</strong> <span style="font-size: 0.6em;"> 
								<a href="/demo/pocketMon/write"><i class="ms-5 fa-solid fa-pen-to-square"></i>포켓몬 추가</a>
								</span>
							</h3>
						</td>
						<td style="width: 15%;">
							<select class="form-select" id="field">
		                        <option value="name" ${field eq 'name' ? 'selected' : '' }>포켓몬 이름</option>
		                        <option value="cid" ${field eq 'cid' ? 'selected' : '' }>도감 번호</option>
		                        <option value="type" ${field eq 'type' ? 'selected' : '' }>타입</option>
	                    	</select>
						</td>
						<td style="width: 27%;">
							<input class="form-control" id="query" value="${query}" 
								onkeyup="if(window.event.keyCode==13) search()"></td>
											   <!-- onkeyup : 13번=엔터키 입력시 검색가능 -->
						<td style="width: 8%;">
							<button class="btn btn-primary" onclick="search()">검색</button>
						</td>
					</tr>
					
				</table>
			<hr>
			<table class="table">
				<tr class="table-dark table-gradient">
					<th style="width: 15%;">도감 번호</th>
					<th style="width: 45%;">포켓몬</th>
					<th style="width: 20%;">속성</th>
					<th style="width: 15%;">조회수</th>
				</tr>
				<c:forEach var="pocketMon" items="${pocketMonList}">
					<tr>
						<td>${pocketMon.cid}</td>
						<td><a href="/demo/pocketMon/detail/${pocketMon.cid}">${pocketMon.name}</a></td>
						<td>${pocketMon.type}</td>
						<td>${pocketMon.viewCount}</td>
					</tr>
				</c:forEach>
			</table>
			</div>
		</div>

		<!-- -----------------main----------------- -->
	</div>


	<%@ include file="./common/bottom.jspf"%>
</body>

</html>