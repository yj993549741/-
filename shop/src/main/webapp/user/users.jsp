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
      <ul class="am-icon-users">用户列表</ul>
      <dl>
      	<a href="insert.jsp" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">添加用户</a>
      </dl>
      <form action="findByKeywords.do" method="post" class="am-btn am-btn-xs" style="margin-top:8px">
      	<input type="text" name="keywords">
      	<input type="submit" class="am-btn-danger" value="搜索">
      </form>
      <!--这里打开的是新页面-->
     </div>
          <table width="80%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-id">用户ID</th>
                <th class="table-title">用户名称</th>
                <th class="table-type">用户密码</th>
                <th class="table-type">手机号码</th>
                <th class="table-type">送货地址</th>
                <th class="table-type">注册日期</th>
                <th width="90px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${users }" var="user">
              <tr>
                <td>${user.id }</td>
                <td><a href="findById.do?id=${user.id }">${user.username }</a></td>
                 <td>${user.password}</td>
                 <td>${user.phone}</td>
                 <td>${user.addr}  <span class="am-btn am-btn-success am-btn-xs am-round">已发货</span></td>
                 <td>${user.rdate}</td>
                <td>
                	<div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                    <a href="findById.do?id=${user.id}" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" data-am-modal="{target: '#my-popups'}" title="查看用户"><span class="am-icon-copy"></span></a>
                    <a href="delete.do?id=${user.id}" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除用户"><span class="am-icon-trash-o" ></span></a>
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