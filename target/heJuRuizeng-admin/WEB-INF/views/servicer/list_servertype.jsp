<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>服务器类型列表</title>
		<%@include file="../common/share_static.jsp" %>
</head>
<body>
		<%@include file="../common/header.jsp"%>
		<!-- leftNav before-->
		<div class="container-fluid all">
        <div class="sidebar">
            <ul class="nav">
                <li id="index"><a href="index.html">首页</a></li>
		<li><a href="#">资源管理</a></li>
		<li><a href="#">前台管理</a></li>
		 <li class="has-sub active">
			<a href="javascript:void(0);"><span>服务器管理</span>
			<i class="fa fa-caret-right fa-fw pull-right"></i></a>
			<ul class="sub-menu" style="display: block;">
				<li class="active"><a href="<%=basePath %>/ServerType/queryServerTypeInit.do"><i class="fa fa-circle-o fa-fw"></i>&nbsp;服务器列表</a></li>
				<li><a href="<%=basePath %>/ServerType/toaddServerType.do"><i class="fa fa-circle-o fa-fw"></i>&nbsp;添加服务器</a></li>
			</ul>
		</li>
			<li><a href="#">工作站管理</a></li>
			<li><a href="#">硬件库管理</a></li>
			<li><a href="#">后台管理</a></li>
			<li><a href="#">用户管理</a></li>
			<li><a href="#">反馈处理</a></li>
          </ul>
       			 </div>
       			 <div class="maincontent">
            <!--我是主要内容 start-->
	            <ul class="breadcrumb">
	                <li class="active">首页</li>
	            </ul>
	     <div class="row" id="form-datepicker">
            <div class="page-header text-center" style="color: #31B0D5;margin-top:-30px;">
                 <h2>服务器类型列表</h2>
             </div>
            <div class="col-md-10" style="margin-left: 10.5%">
            	<div style="background-color: white;">
		     <table class="table table-bordered">
			  	<tr>
			  		<th width="5%">ID</th>
			  		<th width="12%">服务器类型名</th>
			  		<th width="15%">服务器类型简介</th>
			  		<th>服务器类型详细内容</th>
			  		<th width="25%">操作</th>
			  	</tr>
			  	<c:forEach items="${serverTypeList}" var="s" begin="0" varStatus="status">
			  	<tr>
			  		<td width="5%">${status.index+1}</td>
			  		<td width="12%">${s.typeName}</td>
			  		<td width="15%">${s.typeTitle}</td>
			  		<td>${fn:substring(s.typeDetails, 0, 35)}...</td>
			  		<td width="25%">
			  			<a href="" class="button button-action  button-rounded button-tiny">查看</a>
			  			<a href="" class="button button-highlight button-rounded button-tiny">编辑</a>
			  			<a href="" class="button button-caution  button-rounded button-tiny">删除</a>
			  		</td>
			  	</tr>
			  	</c:forEach>
			</table>
            </div>
            <!--我是主要内容 end-->
        </div>
    	</div>
    </div>
        </div>
        <!-- leftNav end -->
</body>
</html>