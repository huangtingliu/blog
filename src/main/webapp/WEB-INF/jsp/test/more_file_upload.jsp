<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>spring多文件上传测试</title>
    
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
    <form id="uploadForm" action="${ctxPath}/base/moreUpload" method="post" enctype="multipart/form-data" >
    	<p>
    		<span>文件1：</span>
    		<input id="imgFile" type="file" name="file">
    	</p>
    	<p id="showPath1"></p>
    	<p>
    		<span>文件2：</span>
    		<input id="imgFile" type="file" name="file">
    	</p>
    	<p id="showPath2"></p>
    	<p>
    		<span>文件3：</span>
    		<input id="imgFile" type="file" name="file">
    	</p>
    	<p id="showPath3"></p>
    	<p>
    		<button type="button" onclick="upload()">上传</button>
    	</p>
    </form>
    <script type="text/javascript">
    	function upload(){
    		$("#uploadForm").ajaxSubmit(function(data){
    			
    			$("#showPath1").text(data[0]);
    			$("#showPath2").text(data[1]);
    			$("#showPath3").text(data[2]);
    			//记得return false防止重复提交
    		    return false;
    		});
    	}
    </script>
  </body>
</html>
