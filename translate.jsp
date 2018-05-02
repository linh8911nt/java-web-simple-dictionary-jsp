<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: nguyenthanhlinh
  Date: 5/2/18
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String , String> dictionary = new HashMap<>();
%>

<%
    dictionary.put("hello", "xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");

    String search = request.getParameter("word");

    String result = dictionary.get(search);

    if (result != null){
        out.println("Word: " + search);
        out.println(" / " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
