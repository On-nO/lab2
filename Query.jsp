<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
<link rel="stylesheet" href="dist/css/bootstrap.min.css">
<link rel="stylesheet" href="dist/css/bootstrap-theme.min.css">
<script src="dist/js/jquery-3.1.1.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="static/css/styles.css">
    <title>查看详细信息</title>
  </head>  
    
  <body>
 <div class="container" style="width:60%;margin-top:20px">
	<div class="panel-heading">
		<h3>图书信息</h3>
	</div>
	<div class="panel-body">
	<div class="form-group">
	  <label for="showTitle" class="col-sm-2 control-label">标题</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.book.title' />" >
	  </div>
	</div>
	
	<div class="form-group">
	  <label for="showISBN"  class="col-sm-2 control-label">ISBN</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.book.ISBN' />">
	  </div>
	</div>
	
	<div class="form-group">
	  <label for="showPublisher" class="col-sm-2 control-label">出版商</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.book.publisher' />">
	  </div>
	</div>
	
	<div class="form-group">
	  <label for="showDate" class="col-sm-2 control-label">出版日期</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.book.publishDate' />">
	  </div>
	</div>

	<div class="form-group">
	  <label for="showPrice" class="col-sm-2 control-label">价格</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.book.price' />">
	  </div>
	</div>
	</div>
	<div class="panel-heading">
		<h3>作者信息</h3>
	</div>
	
	<div class="panel-body">
	<div class="form-group">
	  <label for="showAuthor" class="col-sm-2 control-label">作者</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.author.name' />">
	  </div>
	</div>
	<div class="form-group">
	  <label for="showAuthorAge" class="col-sm-2 control-label">作者年龄</label>
	  <div class="col-sm-10">
	    <input type="text" readonly="readonly" class="form-control" value="<s:property value='bookDetail.author.age' />">
	  </div>
	</div>	

	
</div>		
</div>
  </body>	
</html>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

  <head>
    <base href="<%=basePath%>">

   <title>成功删除</title>
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
    <%=request.getAttribute("message") %> <br>
    <p><a href="queryshow.jsp">返回主页</a></p>
  </body>
</html>