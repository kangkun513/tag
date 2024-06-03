<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TAG HOME</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">

	.top {
		padding: 10px;
		margin: 10px;
		width: 360px;
		height: 160px;
	}
	
	.mid {
		padding: 10px;
		margin: 10px;
		width: 360px;
		height: 160px;
	}

	.bot {
		padding: 10px;
		margin: 10px;
		width: 360px;
		height: 160px;
	}
	
</style>
</head>
<body>

<div class="container" style="display: flex; justify-content: center; border: 1px solid silver; width: 100%; height: 120px;">
	<h1 style="float: left;">T</h1>
	<h5 style="float: left;">rend</h5>
	<h1 style="float: left;">A</h1>
	<h5 style="float: left;">nd</h5>
	<h1 style="float: left;">G</h1>
	<h5 style="float: left;">ame</h5>
</div>

<div class="container" style="display: flex; justify-content: center; width: 100%;">
	<div style="display: grid;
				grid-template-columns: 400px; 
				grid-template-rows: repeat(4, 200px); 
				width: 400px;
				border: 1px solid silver;">
		<div class="top left" style="background-color: #C33131;">1
			<button class="but" type="button" onclick="location.href='Content.jsp'"
			style="width: 50%; height: 50%;">Content</button>
		</div>
		<div class="mid left1" style="background-color: #2EFE9A;">2</div>
		<div class="mid left2" style="background-color: #F4FA58;">3</div>
		<div class="bot left" style="background-color: #64FE2E;">4</div>
	</div>
	
	<div style="display: grid;
				grid-template-columns: 200px 200px; 
				grid-template-rows: repeat(4, 200px); 
				width: 400px; 
				border: 1px solid silver;">
		<div class="top mid1" style="width: 160px; background-color: #58FAF4; float: left;">5-1</div>
		<div class="top mid2" style="width: 160px; background-color: #01DFD7; float: left;">5-2</div>
		<div class="mid mid1" style="width: 160px; background-color: #04B4AE; float: left;">5-3</div>
		<div class="mid mid2" style="width: 160px; background-color: #088A85; float: left;">5-4</div>
		<div class="mid mid3" style="background-color: #DA81F5;">6</div>
	</div>
		
	<div style="display: grid;
				grid-template-columns: 200px; 
				grid-template-rows: repeat(4, 200px);  
				width: 200px;
				border: 1px solid silver;">
		<div class="top mid3" style="width: 160px; background-color: #234567;">7</div>
		<div class="mid mid4" style="width: 160px; background-color: #B23F74;">8</div>
		<div class="mid mid4" style="width: 160px; background-color: #987654;">9</div>
		<div class="mid mid4" style="width: 160px; background-color: #093116;">10</div>
	</div>
	
	<div style="display: grid;
				grid-template-columns: repeat(3, 200px); 
				grid-template-rows: repeat(4, 200px);
				grid-auto-flow: row dense;
				grid-auto-flow: column dense;
				width: 600px;
				border: 1px solid silver;">
		<div class="top right" style="height: 360px; grid-column: 1 / 4; grid-row: 1 / 3; background-color: pink;">11</div>
		<div class="mid mid4" style="width: 160px; background-color: #5BC22F;">12</div>
		<div class="mid right1" style="width: 160px; background-color: #4973AB;">13</div>
		<div class="mid right2" style="background-color: #DDDDDD;">14</div>
		<div class="mid mid4" style="width: 160px; background-color: #555555;">15</div>
	</div>
	
</div>

</body>
</html>