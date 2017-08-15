<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>服务器列表</title>
		<%@include file="../common/share_static.jsp" %>
		<!-- ServerList CSS -->
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/servicer.css/component.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/servicer.css/normalize.css" />
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
				<li><a href="<%=basePath %>#"><i class="fa fa-circle-o fa-fw"></i>&nbsp;服务器管理</a></li>
				<li><a href="<%=basePath %>/ServerType/queryServerTypeInit.do"><i class="fa fa-circle-o fa-fw"></i>&nbsp;服务器类型管理</a></li>
				<li class="active"><a href="<%=basePath %>/servicer/queryServerInit.do"><i class="fa fa-circle-o fa-fw"></i>&nbsp;服务器属性管理</a></li>
			</ul>
		</li>
			<li><a href="#">工作站管理</a></li>
			<li><a href="#">硬件库管理</a></li>
			<li><a href="#">后台管理</a></li>
			<li><a href="#">用户管理</a></li>
			<li><a href="#">反馈处理</a></li>
          </ul>
       	</div>
       	<!-- leftNav end -->
       	 <div class="maincontent">
            <!--我是主要内容 start-->
            	<ul class="breadcrumb">
	                <li class="active">首页</li>
	            </ul>
	            <div class="row" id="form-datepicker">
		            <div class="col-xs-12 col-md-12">
		            	<div class="component">
		            	<!--条件查询框-->
              		<div class="panel panel-primary">	
              			<div class="panel-heading">
              				<h3 class="panel-title">条件查询</h3>
              			</div>
              			<div class="panel-body">
	              		<form class="form-inline" action="/servicer/queryServerInit.do" method="get">
		              		<div class="form-group">
		              		 <label>服务器名称：</label>
		   					 <input type="text" class="form-control" name="typeName" placeholder="类型名称，如“刀片”" value="${serverTypeQuery.typeName}">
		   					 <label>服务器类型：</label>
		   					 <input type="text" class="form-control" name="typeTitle" placeholder="标题内容，如“可插装多个”" value="${serverTypeQuery.typeTitle}">
		   					 <label>处理器平台：</label>
		   					 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
		   					 <label>服务器品牌：</label>
			   				 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
		              		</div>
		              		
			              	<div style="margin-top: 10px">
			   					 <label>操作系统：</label>
			   					 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
			   					 <label>CPU容量：</label>
			   					 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
			   					 <label>按服务器简述：</label>
			   					 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
			              		 <label>按服务器详细信息：</label>
			   					 <input type="text" class="form-control" name="typeDetails" placeholder="描述内容，如“高可用”" value="${serverTypeQuery.typeDetails}">
			              		
			              	<div class="form-group pull-right">
			   				<input type="submit" class="btn btn-primary" value="提交查询"/>
			              		<input type="button"  class="btn btn-info" onclick="window.location.href='<%=basePath %>/ServerType/toaddServerType.do'" value="添加服务器>>>">
			              		</div>
			              		</div>
		              	</form>
	              		</div>
              		</div>
		            	<table>
							<thead>
								<tr style="background-color:#009ACD;color: #FFFFFF;">
									<th>编号</th>
									<th>服务器名称</th>
									<th>服务器类型</th>
									<th>创建时间</th>
									<th>处理器</th>
									<th>品牌</th>
									<th>操作系统</th>
									<th>产品特性简述</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>	
							<c:forEach items="${servicerList}" var="s" begin="0" varStatus="status">
								<tr>
									<td>${status.index+1}</td>
									<td>${s.serverName}</td>
									<td>${s.typeName}</td>
									<td>${s.create_time}</td>
									<td>${s.siProcessor}</td>
									<td>${s.sibrandName}</td>
									<td>${s.sioperSystem}</td>
									<td>${s.productdesc}</td>
									<td>
										<button class="btn btn-default" type="submit">查看</button>
										<button class="btn btn-default" type="submit">编辑</button>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
		            	
		            	
		            	
		            	
		            	</div>
		            </div>
	            </div>
          </div>
       </div>
</body>
</html>