<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exercise.jsp' starting page</title>
    
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
  	<%! /*声明脚本需要加!  */
  		//定义一个打印乘法表的函数
  		String printTable(){
  			
  			String s = "";
  			for(int i=1; i<9; i++){
  				for(int j=1; j<i; j++){
  					s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
  				}
  				s+="<br>";//追求换行
  			}
  			return s;
  		}
  		void printTable2(JspWriter writer){
  			try{
  				for(int i=1; i<9; i++){
  				for(int j=1; j<i; j++){
  					writer.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
  				}
  				writer.println("<br>");//追求换行
  				}
  			}catch(Exception e){
  			
  			}
  		}
  	 %>
    <h1>九九乘法表</h1>
    <hr><!--分割线换行  -->
    <%=printTable() %><!-- 该函数有返回值，在执行脚本中要加=但不加; -->
    <%printTable2(out); %><!-- 该函数没有返回值，在执行脚本中不加=但要加; -->
  </body>
</html>
