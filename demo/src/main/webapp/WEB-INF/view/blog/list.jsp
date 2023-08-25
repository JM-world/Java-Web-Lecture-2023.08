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
			location.href = '/demo/blog/list?f=' + field + '&q=' + query;
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
								<strong>블로그 목록</strong> <span style="font-size: 0.6em;"> 
								<a href="/demo/blog/write"><i class="ms-5 fa-solid fa-pen-to-square"></i>쓰기</a>
								</span>
							</h3>
						</td>
						<td style="width: 15%;">
							<select class="form-select" id="field">
		                        <option value="title" ${field eq 'title' ? 'selected' : '' }>제목</option>
		                        <option value="content" ${field eq 'content' ? 'selected' : '' }>내용</option>
		                        <option value="penName" ${field eq 'penName' ? 'selected' : '' }>필명</option>
	                    	</select>
						</td>
						<td style="width: 27%;">
							<input class="form-control" placeholder="검색할 단어" 
								id="query" value="${query}" onkeyup="if(window.event.keyCode==13) search()">
						</td>						   <!-- onkeyup : 13번=엔터키 입력시 검색가능 -->
						<td style="width: 8%;">
							<button class="btn btn-success" onclick="search()">검색</button>
						</td>
					</tr>
					
				</table>
			<hr>
			<table class="table">
				<tr class="table-secondary">
					<th style="width: 5%;">ID</th>
					<th style="width: 20%;">필명</th>
					<th style="width: 45%;">제목</th>
					<th style="width: 18%;">작성 시간</th>
					<th style="width: 12%;">조회수</th>
				</tr>
				<c:forEach var="blog" items="${blogList}">
					<tr>
						<td>${blog.bid}</td>
						<td>${blog.penName}</td>
						<td><a href="/demo/blog/detail/${blog.bid}">${blog.title}</a></td>
						<td>${fn:substring(fn:replace(blog.modTime,'T',' '), 2, 16)}</td>
						<td>${blog.viewCount}</td>
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