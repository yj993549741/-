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
      <ul class="am-icon-flag on">商品列表</ul>
      <dl>
      <form action="insert.do" method="post">
        <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"onclick="location.href='insert_root.jsp'">添加根类别</button>
      </form>
      </dl>
    </div>
    <form class="am-form am-g" method="post" action="">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-id">类别ID</th>
                <th class="table-id">类别名称</th>
                <th class="table-title">类别描述</th>
                <th class="table-type">所属类别</th>
                <th class="table-author am-hide-sm-only">是否为叶子节点 </th>
                <th class="table-date am-hide-sm-only">级别</th>
                <th width="163px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${categories}" var="c1">
              <tr>
                <td>${c1.id }</td>
                <td>${c1.name }</td>
                 <td>${c1.descr }</td>
                  <td>根节点 </td>
                   <td>${c1.leaf?"是":"否" }</td>
                    <td>${c1.grade }</td>
                  
                <!-- <td class="am-hide-sm-only"><i class="am-icon-check am-text-warning"></i></td> -->
                 <td><div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                       <a href="findById.do?id=${c1.id }" class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="添加子类别"><span class="am-icon-copy"></span></a>
                      <a href="update.do?id=${c1.id }" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" title="修改商品"><span class="am-icon-pencil-square-o"></span></a>
                   	  <a href="delete.do?id=${c1.id }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除商品"><span class="am-icon-trash-o"></span></a>
                    </div>
                  </div></td>
              </tr>
	          <c:forEach items="${c1.children }" var="c2">
	            <tr>
                <td>${c2.id }</td>
                <td>----${c2.name }</td>
                 <td>${c2.descr }</td>
                  <td>${c1.name }</td>
                   <td>${c2.leaf?"是":"否"}</td>
                    <td>${c2.grade }</td>
                 <td><div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <!-- <button class="am-btn am-btn-default am-btn-xs am-text-success am-round"><span class="am-icon-search"></span> </button> -->
                        <a href="findById.do?id=${c2.id }" class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="添加子类别"><span class="am-icon-copy"></span></a>
                      <a href="update.do?id=${c2.id }" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" title="修改商品"><span class="am-icon-pencil-square-o"></span></a>
                   	  <a href="delete.do?id=${c2.id }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除商品"><span class="am-icon-trash-o"></span></a>
                    </div>
                  </div></td>
              </tr>
               <c:forEach items="${c2.children}" var="c3">
	            <tr>
                <td>${c3.id }</td>
                <td>--------${c3.name }</td>
                 <td>${c3.descr }</td>
                  <td>${c2.name }</td>
                   <td>${c3.leaf?"是":"否" }</td>
                    <td>${c3.grade }</td>
                 <td><div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <a class="am-btn am-btn-default am-btn-xs am-text-warning  am-round" title="三级类别无法添加子类别"><span class="am-icon-copy"></span></a>
                      <a href="update.do?id=${c3.id }" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" title="修改商品"><span class="am-icon-pencil-square-o"></span></a>
                   	  <a href="delete.do?id=${c3.id }" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" title="删除商品"><span class="am-icon-trash-o"></span></a>
                    </div>
                  </div></td>
              </tr>
              </c:forEach>
	          </c:forEach>
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