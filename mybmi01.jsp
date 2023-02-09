<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMIと適正体重</title>
</head>
<body>
<h1>情報入力</h1>
<p>身長と体重を入力して適正体重を算出します。</p>

<form action="mybmi01_result.jsp" method="GET">  <!-- 入力フォーム -->
<p>身長(cm/必須)<input type="text" name="height" required><p>
<p>体重(kg/必須) <input type="text" name="weight" required></p>
<input type="submit" value="計算する">
</form>
</body>
</html>