<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
 table {border: 2px double black; width:666px}
  td,th{border:1px black solid ; text-align: center; padding:5px}
</style>
</head>
<body>
${Black.VO}
	<h2>유저차단</h2>
 <table>
        <tr>
        <th>번호${black.d_no}</th><th>아이디${black.userid}</th><th>차단된 아이디${black.d_ld}</th><th>차단사유${black.reason_code}</th>
        </tr>
</table>
</body>
</html>