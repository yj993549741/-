<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="nav-navicon admin-main admin-sidebar">
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎进入后台管理系统！</div>
    <div class="sideMenu">
      <!-- 管理员管理 -->
     <h3 class="am-icon-users"><em></em> <a href="#">管理员管理</a></h3>
      <ul>
     	 <li><a href="../admin/findAll.do">管理员列表</a></li>
        <li><a href="../admin/insert.jsp">添加管理员</a></li>
      </ul>
      <!-- 用户管理 -->
       <h3 class="am-icon-users"><em></em> <a href="#">用户管理</a></h3>
      <ul>
        <li><a href="../user/findAll.do">用户列表</a></li>
      </ul>
      <!-- 类别管理 -->
      <h3 class="am-icon-flag"><em></em> <a href="#">类别管理</a></h3>
      <ul>
        <li><a href="../category/findAll.do">类别列表</a></li>
        <li><a href="../category/insert_root.jsp">添加根类别</a></li>
        <li><a href="../category/insert_child.jsp">添加子类别</a></li>
      </ul>
      <!-- 商品管理 -->
      <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
      <ul>
        <li><a href="../product/findAll.do">商品列表</a></li>
         <li><a href="../product/insert.jsp">添加新商品</a></li>
         <li><a href="../product/search.jsp">搜索商品（复杂）</a></li>
      </ul>
      <!-- 订单管理 -->
      <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
      <ul>
        <li>订单列表</li>
        <li>合并订单</li>
        <li>订单打印</li>
        <li>添加订单</li>
        <li>发货单列表</li>
        <li>换货单列表</li>
      </ul>
      <!-- 系统设置 -->
      <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
      <ul>
        <li>数据备份</li>
        <li>邮件/短信管理</li>
        <li>上传/下载</li>
        <li>权限</li>
        <li>第三方支付</li>
      </ul>
    </div>
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script> 
	</div>
</body>
</html>