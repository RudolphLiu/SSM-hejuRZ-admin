<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加服务器类型</title>
		<%@include file="../common/share_static.jsp" %>
		<!-- ServerTypeList CSS -->
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/servicer.css/component.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/servicer.css/normalize.css" />
</head>
<body>
		<%@include file="../common/header.jsp"%>
		<div class="container-fluid all">
		 <%@include file="../common/leftnav.jsp" %>
		<div class="maincontent">
            <!--我是主要内容 start-->
	            <ul class="breadcrumb">
	                <li class="active">添加服务器类型</li>
	            </ul>
            <div class="col-xs-12 col-md-12">
              	<!--style="margin-left:20.0%;"-->
              	<div class="component">
              		<!-- 内容start -->
              		<input type="button"  class="btn btn-info" onclick="window.location.href='<%=basePath %>brands/addbrand.do'" value="添加品牌>>>">
              		<!-- 内容start -->
	              		  	<table>
						<thead>
							<tr style="background-color:#009ACD;color: #FFFFFF;">
								<th>编号</th>
								<th>硬件类型名称</th>
								<th>硬件类型logo</th>
								<th>硬件类型简介</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${hardwaretypes}" var="h" begin="0" varStatus="status">
							<tr>
								<td>${status.index+1}</td>
								<td>${h.hardtypeName}</td>
								<td><img src="/upload/${h.hardtypeImgPath}" style="width:100px;height:40px"/></td>
								<td>${fn:substring(h.hardtypeIntroduction, 0, 40)}...</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
              	</div>
              </div>
			</div>
		</div>
</body>
</html>