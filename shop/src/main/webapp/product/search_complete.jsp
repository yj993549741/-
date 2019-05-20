<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>电商平台后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="../assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="../assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="../assets/css/admin.css">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/app.js"></script>
<script src="../assets/js/amazeui.min.js"></script>

</head>
<body>

</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="../assets/i/logo.png"></div>
</header>

<div class="am-cf admin-main"> 

	<%@include file="../header.jsp" %>

<div class=" admin-content">
	<%@include file="../daohang.jsp" %>
<div class="admin-biaogelist">
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on">商品搜索列表</ul>
    </div>
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-id">商品ID</th>
                <th class="table-id">商品名称</th>
                <th class="table-title">商品描述</th>
                <th class="table-type">普通价格</th>
                <th class="table-author">会员价格</th>
                <th class="table-date">上架日期</th>
                <th class="table-set">商品类别</th>
                 <th class="table-title">图片路径</th>
                 <th class="table-id">图片</th>
                <th width="90px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${products}" var="p">
              <tr>
                <td>${p.id }</td>
                <td>${p.name }</td>
                 <td>${p.descr }</td>
                  <td>${p.normalprice }</td>
                   <td>${p.memberprice }</td>
                    <td>${p.pdate }</td>
                    <td>${p.category.name }</td>
                    <td></td>
                    <td></td>
                    <td>
                    	<div class="am-btn-toolbar">
		                    <div class="am-btn-group am-btn-group-xs">
		                    <a href="" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改商品"><span class="am-icon-pencil-square-o"></span></a>
		                    <a href="" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除商品"><span class="am-icon-trash-o" ></span></a>
		                    </div>
                  		</div>
                    </td>
              </tr>
	          </c:forEach>
            </tbody>
          </table>
         <%@include file="../page.jsp" %>
</div>
</div>
</div>
</body>
</html>