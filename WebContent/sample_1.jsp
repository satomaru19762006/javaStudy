<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
//運勢をランダムで決定
String[] luckArray = {"超すっきり","すっきり","さいあく"};

//0以上3未満の整数を乱数で生成
int index = (int) (Math.random() * 3);

String luck = luckArray[index];

//実行日を取得
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
String today = sdf.format(date);

%>

<%-- jspコメント --%>
<!-- htmlコメント -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スッキリ占い</title>
</head>
<body>
<p><%= today %>の運勢は、<%= luck %>です</p>
</body>
</html>