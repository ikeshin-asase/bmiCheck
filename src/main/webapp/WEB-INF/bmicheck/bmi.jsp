<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMIと適正体重(servlet)</title>
<link rel ="stylesheet" href="css/style.css"></head>
<body>
<h1 class="line">BMI算出用情報入力</h1>
<p>適正体重を算出する方の身長と体重を入力してください。</p>
<p><span class="required">*</span>は入力必須項目。</p>

<form action="bmicheck" method="POST">  <!-- 入力フォーム -->
<p>身長<span class="required">*</span>(cm)<input type="text" name="height" required><p>
<p>体重<span class="required">*</span>(kg) <input type="text" name="weight" required></p>
<input type="submit" value="計算する">
</form>
</body>
</html>