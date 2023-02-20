<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMIと適正体重の計算結果</title>
<link rel ="stylesheet" href="css/style.css">
<body>

<h1>結果</h1>
<%
double bmi = (double)request.getAttribute("bmi");
double height = (double)request.getAttribute("height");
double weight = (double)request.getAttribute("weight");
double appropriateWeight = (double)request.getAttribute("appropriateWeight");
double comparison = (double)request.getAttribute("comparison");
%>
<p>あなたの身長は<%= height %>cm、体重は<%= weight %>kgです。</p>
<%
String[][] bmiResult = {{"18.5未満","低体重(痩せ型)","","",""}, //bmi配列の作成と代入(規定値)
        {"18.5〜25未満","普通体重","","",""},{"25〜30未満","肥満(1度)","","",""},
        {"30〜35未満","肥満(2度)","","",""},{"35〜40未満","肥満(3度)","","",""},{"40以上","肥満(4度)","","",""}};
int bmiJudge; // 該当するbmi部分の配列位置をbmiJudgeに代入
if (bmi < 18.5) {
    bmiJudge = 0;
    bmiResult[0][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[0][3] = String.valueOf(comparison)+"kg";
    bmiResult[0][4] = String.valueOf(bmi);
} else if (bmi < 25) {
    bmiJudge = 1;
    bmiResult[1][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[1][3] = String.valueOf(comparison)+"kg";
    bmiResult[1][4] = String.valueOf(bmi);
} else if (bmi < 30){
    bmiJudge = 2;
    bmiResult[2][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[2][3] = String.valueOf(comparison)+"kg";
    bmiResult[2][4] = String.valueOf(bmi);
} else if (bmi < 35){
    bmiJudge = 3;
    bmiResult[3][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[3][3] = String.valueOf(comparison)+"kg";
    bmiResult[3][4] = String.valueOf(bmi);
} else if (bmi < 40){
    bmiJudge = 4;
    bmiResult[4][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[4][3] = String.valueOf(comparison)+"kg";
    bmiResult[4][4] = String.valueOf(bmi);
} else {
    bmiJudge = 5;
    bmiResult[5][2] = String.valueOf(appropriateWeight)+"kg";
    bmiResult[5][3] = String.valueOf(comparison)+"kg";
    bmiResult[5][4] = String.valueOf(bmi);
}
%>
<p>あなたのBMIは<%= bmi %>です。</p>
<table>
<tr><th>範囲</th><th>肥満度</th><th>適正体重</th><th>適正体重との比較</th><th>BMI</th></tr>
<% for(int i=0; i < bmiResult.length; i++){  %> 
    <tr<% if(bmiJudge == i) {%> class="match">
    <% for(String results:bmiResult[i]){ //配列がbmiJudgeと一致すればtrの背景を着色 配列内容を表示 %>
        <td><STRONG><%= results %></STRONG></td>
        <% } %>
   　<% } else {%>>
        <% for(String results:bmiResult[i]){ %>
        <td><%= results %></td>
        <% } %>
    <% } %>
    </tr>
<% } %>
</table>

</body>
</html>
