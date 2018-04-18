<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
SCREEN
<hr>

<form action="C_SeatStore" method="get">

	<table>
		<tr>
			<th></th>
			<th>1</th> <th>2</th> <th>3</th> <th>4</th> <th></th>
			<th>5</th> <th>6</th> <th>7</th> <th>8</th>
		</tr>	
		<tr>
			<td>A</td>
			<td><input type="checkbox" name="seat" value="A1"></td>
			<td><input type="checkbox" name="seat" value="A2"></td>
			<td><input type="checkbox" name="seat" value="A3"></td>
			<td><input type="checkbox" name="seat" value="A4"></td>
			
			<td>走</td>
			
			<td><input type="checkbox" name="seat" value="A5"></td>
			<td><input type="checkbox" name="seat" value="A6"></td>
			<td><input type="checkbox" name="seat" value="A7"></td>
			<td><input type="checkbox" name="seat" value="A8"></td>
			
		</tr>
		
		<tr>
			<td>B</td>
			<td><input type="checkbox" name="seat" value="B1"></td>
			<td><input type="checkbox" name="seat" value="B2"></td>
			<td><input type="checkbox" name="seat" value="B3"></td>
			<td><input type="checkbox" name="seat" value="B4"></td>
			
			<td></td>
						
			<td><input type="checkbox" name="seat" value="B5"></td>
			<td><input type="checkbox" name="seat" value="B6"></td>
			<td><input type="checkbox" name="seat" value="B7"></td>
			<td><input type="checkbox" name="seat" value="B8"></td>
			
		</tr>
		
		<tr>
			<td>C</td>
			<td><input type="checkbox" name="seat" value="C1"></td>
			<td><input type="checkbox" name="seat" value="C2"></td>
			<td><input type="checkbox" name="seat" value="C3"></td>
			<td><input type="checkbox" name="seat" value="C4"></td>
			
			<td></td>
			
			<td><input type="checkbox" name="seat" value="C5"></td>
			<td><input type="checkbox" name="seat" value="C6"></td>
			<td><input type="checkbox" name="seat" value="C7"></td>
			<td><input type="checkbox" name="seat" value="C8"></td>
			
		</tr>

		<tr>
			<td>D</td>
			<td><input type="checkbox" name="seat" value="D1"></td>
			<td><input type="checkbox" name="seat" value="D2"></td>
			<td><input type="checkbox" name="seat" value="D3"></td>
			<td><input type="checkbox" name="seat" value="D4"></td>
			
			<td>道</td>
			
			<td><input type="checkbox" name="seat" value="D5"></td>
			<td><input type="checkbox" name="seat" value="D6"></td>
			<td><input type="checkbox" name="seat" value="D7"></td>
			<td><input type="checkbox" name="seat" value="D8"></td>
			
		</tr>
	
	
	</table>


	
	<hr>
	<input type="submit" value="OK" />
	
</form>

</body>
</html>