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
<script src="assets/js/amazeui.min.js"></script>
</head>
<body>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->

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
      <ul class="am-icon-users">管理员列表</ul>
      <dl>
      	<a href="insert.jsp" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">添加管理员</a>
      </dl>
    </div>
    <form class="am-form am-g" action="" method="post">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <!-- <th class="table-check"><input type="checkbox" /></th> -->
                <th class="table-id">ID</th>
                <th class="table-title">管理员名称</th>
                <th class="table-type">管理员密码</th>
                <th width="130px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${admins }" var="admin">
              <tr>
                <td>${admin.id }</td>
                <td>${admin.aname }</td>
                 <td>${admin.apwd }</td>
                <td>
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                    <a href="findById.do?id=${admin.id}" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="修改管理员"><span class="am-icon-pencil-square-o"></span></a>
                    <a href="delete.do?id=${admin.id}" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除管理员"><span class="am-icon-trash-o" ></span></a>
                    </div>
                  </div>
                </td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
          <%@include file="../page.jsp" %>
        </form>
</div>
</div>
</div>
</body>
</html>