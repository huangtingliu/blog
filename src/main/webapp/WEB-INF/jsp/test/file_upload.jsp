<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>spring单文件上传测试</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${resRoot}/js/jquery-1.12.0.min.js"></script>
	<script type="text/javascript" src="${resRoot}/js/jquery-form.js"></script>
  </head>
  
  <body>
    <form id="uploadForm" action="${ctxPath}/base/upload" method="post" enctype="multipart/form-data" >
    	<p>
    		<span>文件：</span>
    		<input id="imgFile" type="file" name="imgFile">
    	</p>
    	<p id="showPath"></p>
    	<p>
    		<button type="button" onclick="upload()">上传</button>
    	</p>
    </form>
    <script type="text/javascript">
    	function upload(){
    		$("#uploadForm").ajaxSubmit(function(data){
    			
    			alert(data);
    			$("#showPath").text(data);
    			//记得return false防止重复提交
    		    return false;
    		});
    	}
    </script>
  </body>
</html>
