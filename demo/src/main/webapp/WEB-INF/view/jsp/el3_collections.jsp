<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EL Collections</title>
	<style>td { padding: 3px; }</style>
</head>
<body style="margin: 40px;">
	<h1>Collections</h1>
	<hr>
	<table border="1">
		<tr><td>표현식</td><td>결과</td></tr>
		<tr><td>\${fruitArray[0]}</td><td>${fruitArray[0]}</td></tr>
		<tr><td>\${fruitArray[3]}</td><td>${fruitArray[3]}</td></tr>
		<tr><td>\${sportsList[0]}</td><td>${sportsList[0]}</td></tr>
		<tr><td>\${sportsList[2]}</td><td>${sportsList[2]}</td></tr>
		<tr><td>\${map.key}</td><td>${map.key}</td></tr>
		<tr><td>\${map.value}</td><td>${map.value}</td></tr>
	</table>
</body>
</html>	