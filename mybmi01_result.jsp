<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    import="p01.Product"
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href="css/style.css">
<title>BMIと適正体重の計算結果</title>
</head>

<body>

<h1>結果</h1>


<%
double height = Double.parseDouble(request.getParameter("height")); //入力値をdoubleにして代入と表示
double weight = Double.parseDouble(request.getParameter("weight"));
%>
<p>あなたの身長は<%= height %>cm、体重は<%= weight %>kgです。</p>
<%
double bmiSum = weight / Math.pow((height /100),2); // bmiの計算
double bmi = ((double)Math.round(bmiSum*100)/100); //小数点2位まで四捨五入
double appWeightSum = (Math.pow((height /100),2)*22); //小数点2位まで四捨五入
double appWeight = ((double)Math.round(appWeightSum*100)/100); //小数点2位まで四捨五入
%>
<%= appWeight %>
<%
//Product product = new Product("みそラーメン",680);

//Product a = null;
String[][] bmiResult = {{"18.5未満","低体重(痩せ型)","","",""}, //bmi配列の作成と代入(規定値)
        {"18.5〜25未満","普通体重","","",""},{"25〜30未満","肥満(1度)","","",""},
        {"30〜35未満","肥満(2度)","","",""},{"35〜40未満","肥満(3度)","","",""},{"40以上","肥満(4度)","","",""}};
int bmiJudge; // 該当するbmi部分の配列位置をbmiJudgeに代入
if (bmi < 18.5) {
    bmiJudge = 0;
    bmiResult[0][2] = String.valueOf(appWeight);
    bmiResult[0][3] = String.valueOf(weight-appWeight);
    bmiResult[0][4] = String.valueOf(bmi);
} else if (bmi < 25) {
    bmiJudge = 1;
    bmiResult[1][2] = String.valueOf(appWeight);
    bmiResult[1][3] = String.valueOf(weight-appWeight);
    bmiResult[1][4] = String.valueOf(bmi);
} else if (bmi < 30){
    bmiJudge = 2;
    bmiResult[2][2] = String.valueOf(appWeight);
    bmiResult[2][3] = String.valueOf(weight-appWeight);
    bmiResult[2][4] = String.valueOf(bmi);
} else if (bmi < 35){
    bmiJudge = 3;
    bmiResult[3][2] = String.valueOf(appWeight);
    bmiResult[3][3] = String.valueOf(weight-appWeight);
    bmiResult[3][4] = String.valueOf(bmi);
} else if (bmi < 40){
    bmiJudge = 4;
    bmiResult[4][2] = String.valueOf(appWeight);
    bmiResult[4][3] = String.valueOf(weight-appWeight);
    bmiResult[4][4] = String.valueOf(bmi);
} else {
    bmiJudge = 5;
    bmiResult[5][2] = String.valueOf(appWeight);
    bmiResult[5][3] = String.valueOf(weight-appWeight);
    bmiResult[5][4] = String.valueOf(bmi);
}
%>

<p>あなたのBMIは<%= bmi %>です。</p>
<table>
<tr><th>範囲</th><th>肥満度</th><th>適正体重</th><th>適正体重と比較</th><th>BMI</th></tr>
<% for(int i=0; i < bmiResult.length; i++){  %> 
    <% if(bmiJudge == i) { // 配列がbmiJudgeと一致すればtrの背景を着色 %>
    <tr class="match">
    <% for(String results:bmiResult[i]){ // 配列内容を表示 %>
    <td><STRONG><%= results %></STRONG></td>
    <% } %>
    <% } else { // 配列がbmiJudgeと一致しないときは背景色なしのtr %>
    <tr>
    <% for(String results:bmiResult[i]){ %>
    <td><%= results %></td>
    <% } %>
    </tr>
    <% } %>
    <% } %>
</table>

</body>
</html>