<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>電影資訊</h1>
<div><input type="text"/>搜尋電影</div>
<hr>

<form action="A_Jump" method="get">

<table>
	<tr>
		<td>
			<a href="https://chinesedora.com/movie/35.htm">
				<img alt="ad" src="pics/doraemon01.jpg" height="200"><br>
				<div>大雄之宇宙英雄記</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/36.htm">
				<img alt="ad" src="pics/doraemon02.jpg" height="200"><br>
				<div>新・のび太の日本誕生</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/38.htm">
				<img alt="ad" src="pics/doraemon03.jpg" height="200"><br>
				<div>大雄的金銀島</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>

		<td>
			<a href="https://chinesedora.com/movie/1.htm">
				<img alt="ad" src="pics/doraemon04.jpg" height="200"><br>
				<div>のび太の恐竜</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
	</tr>
	
	
		<tr>
		<td>
			<a href="https://chinesedora.com/movie/35.htm">
				<img alt="ad" src="https://i.imgur.com/OCiBjMz.jpg" height="200"><br>
				<div>STAND BY ME</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/36.htm">
				<img alt="ad" src="pics/doraemon02.jpg" height="200"><br>
				<div>日本誕生</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
		<td>
			<a href="https://chinesedora.com/movie/38.htm">
				<img alt="ad" src="https://i.imgur.com/SMK1WoO.jpg" height="200"><br>
				<div>祕密道具博物館</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>

		<td>
			<a href="https://chinesedora.com/movie/1.htm">
				<img alt="ad" src="https://i.imgur.com/OFDREJN.jpg" height="200"><br>
				<div>冰天雪地大冒險</div>
				<input type="checkbox" name="seeMovie"/>
			</a>
		</td>
		
	</tr>
	

</table>

<hr>
<button onclick="nextPage()">下一頁</button>
<input type="button" value="b_movieList" name="Next Page" />
<button type="submit">Go to next Page</button>


</form>

</body>
</html>