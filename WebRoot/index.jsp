<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is my JSP page. 这是 <br>
    <!-- 我是注释 -->
    <%-- 我是注释 --%>
    
    <%!
    	String s = "张三";
    	int add(int x, int y){
    		return x+y;
    	}
     %>
    
    <%
    	//我是主食
    	out.println("我的爱..."+add(1, 2));
     %>
     
     <br>
     你好, <%=s %><br>
     x+y=<%=add(10, 5) %><br>
     
     
  </body>
</html>
