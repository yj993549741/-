<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>欢迎进入后台管理系统</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
</head>
<body>
</head>

<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="assets/i/logo.png"></div>

<!--  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
   	<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	
  	
  	
    <li class="am-dropdown-header">所有消息都在这里</li>

    

    <li><a href="#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>
    <li><a href="#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></a></li>
    <li><a href="#">未处理汇款</a></li>
    <li><a href="#">未发放提现</a></li>
    <li><a href="#">未发货订单</a></li>
    <li><a href="#">低库存产品</a></li>
    <li><a href="#">信息反馈</a></li>
    
    
    
  </ul>
</li>

 <li class="kuanjie">
 
 	<a href="#">主页</a> 
 	<a href="#">管理员列表</a>          
 	<a href="#">用户列表</a> 
 	<a href="#">类别列表</a>   
 	<a href="#">商品列表</a> 
 	 <a href="#">其它功能</a>
 </li>

 <li class="soso">
 	
<p>   
	
	<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">全部</option>
          <option value="o">产品</option>
          <option value="o">会员</option>
          
        </select>

</p>

<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="圆角表单域" /></p>
<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
 </li>




      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul> -->
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">
    
    
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎进入后台管理系统！</div>
    <div class="sideMenu">
    <!-- 管理员管理 -->
    <h3 class="am-icon-users"><em></em> <a href="#">管理员管理</a></h3>
      <ul>
     	 <li><a href="admin/findAll.do">管理员列表</a></li>
        <li><a href="admin/insert.jsp">添加管理员</a></li>
      </ul>
      <!-- 用户管理 -->
       <h3 class="am-icon-users"><em></em> <a href="#">用户管理</a></h3>
      <ul>
        <li><a href="user/findAll.do">用户列表</a></li>
      </ul>
      <!-- 类别管理 -->
      <h3 class="am-icon-flag"><em></em> <a href="#">类别管理</a></h3>
      <ul>
        <li><a href="category/findAll.do">类别列表</a></li>
        <li><a href="category/insert_root.jsp">添加根类别</a></li>
        <li><a href="category/insert_child.jsp">添加子类别</a></li>
      </ul>
      <!-- 商品管理 -->
      <h3 class="am-icon-flag"><em></em> <a href="#">商品管理</a></h3>
      <ul>
        <li><a href="product/findAll.do">商品列表</a></li>
         <li><a href="product/insert.jsp">添加新商品</a></li>
         <li><a href="product/search.jsp">搜索商品（复杂）</a></li>
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
    <!-- sideMenu End --> 
    
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

<div class=" admin-content">
	
		<div class="daohang">
			<ul>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"> 前台		<a href="pre/index.jsp" class="am-close am-close-spin">*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs"> 首页		<a href="index.jsp" class="am-close am-close-spin">*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">管理员列表<a href="admin/findAll.do" class="am-close am-close-spin" >*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">用户列表<a href="user/findAll.do" class="am-close am-close-spin" >*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">类别列表<a href="category/findAll.do" class="am-close am-close-spin">*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">商品列表<a href="product/findAll.do" class="am-close am-close-spin">*</a></button></li>
				<li><button type="button" class="am-btn am-btn-default am-radius am-btn-xs">订单列表<a href="" class="am-close am-close-spin" >*</a></button></li>
			</ul>
		</div>

	
	


<!-- <div class="admin">
	

	
	
   
   <div class="admin-index">
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 100}">
        <dt class="qs"><i class="am-icon-users"></i></dt>
        <dd>455</dd>
        <dd class="f12">团队数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
        <dt class="cs"><i class="am-icon-area-chart"></i></dt>
        <dd>455</dd>
        <dd class="f12">今日收入</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
        <dt class="hs"><i class="am-icon-shopping-cart"></i></dt>
        <dd>455</dd>
        <dd class="f12">商品数量</dd>
      </dl>
      <dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
        <dt class="ls"><i class="am-icon-cny"></i></dt>
        <dd>455</dd>
        <dd class="f12">全部收入</dd>
      </dl>
    </div>
    <div class="admin-biaoge">
      <div class="xinxitj">信息概况</div>
      <table class="am-table">
        <thead>
          <tr>
            <th>团队统计</th>
            <th>全部会员</th>
            <th>全部未激活</th>
            <th>今日新增</th>
            <th>今日未激活</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td><a href="#">4534</a></td>
            <td>+20</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
      <table class="am-table">
        <thead>
          <tr>
            <th>团队统计</th>
            <th>全部会员</th>
            <th>全部未激活</th>
            <th>今日新增</th>
            <th>今日未激活</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
      <table class="am-table">
        <thead>
          <tr>
            <th>资金统计</th>
            <th>账户总收入</th>
            <th>账户总支出</th>
            <th>账户余额</th>
            <th>今日收入</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>普卡</td>
            <td>普卡</td>
            <td>4534</td>
            <td>+20</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>银卡</td>
            <td>银卡</td>
            <td>4534</td>
            <td>+2</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>金卡</td>
            <td>金卡</td>
            <td>4534</td>
            <td>+10</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>钻卡</td>
            <td>钻卡</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
          <tr>
            <td>合计</td>
            <td>合计</td>
            <td>4534</td>
            <td>+50</td>
            <td> 4534 </td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="shuju">
      <div class="shujuone">
        <dl>
          <dt>全盘收入：  1356666</dt>
          <dt>全盘支出：   5646465.98</dt>
          <dt>全盘利润：  546464</dt>
        </dl>
        <ul>
          <h2>26.83%</h2>
          <li>全盘拨出</li>
        </ul>
      </div>
      <div class="shujutow">
        <dl>
          <dt>全盘收入：  1356666</dt>
          <dt>全盘支出：   5646465.98</dt>
          <dt>全盘利润：  546464</dt>
        </dl>
        <ul>
          <h2>26.83%</h2>
          <li>全盘拨出</li>
        </ul>
      </div>
      <div class="slideTxtBox">
        <div class="hd">
          <ul>
            <li>其他信息</li>
            <li>工作进度表</li>
          </ul>
        </div>
        <div class="bd">
          <ul>
            <table width="100%" class="am-table">
              <tbody>
                <tr>
                  <td width="7%"  align="center">1 </td>
                  <td width="83%" >工作进度名称</td>
                  <td width="10%"  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                <tr>
                  <td  align="center">1 </td>
                  <td>工作进度名称</td>
                  <td  align="center"><a href="#">10%</a></td>
                </tr>
                
                
                
                
                
                
                
                
              </tbody>
            </table>
          </ul>
          <ul>
            <table class="am-table">
              <tbody>
                <tr>
                  <td>普卡</td>
                  <td>普卡</td>
                  <td><a href="#">4534</a></td>
                  <td>+20</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>银卡</td>
                  <td>银卡</td>
                  <td>4534</td>
                  <td>+2</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>金卡</td>
                  <td>金卡</td>
                  <td>4534</td>
                  <td>+10</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>钻卡</td>
                  <td>钻卡</td>
                  <td>4534</td>
                  <td>+50</td>
                  <td> 4534 </td>
                </tr>
                <tr>
                  <td>合计</td>
                  <td>合计</td>
                  <td>4534</td>
                  <td>+50</td>
                  <td> 4534 </td>
                </tr>
              </tbody>
            </table>
          </ul>
        </div>
      </div>
      <script type="text/javascript">jQuery(".slideTxtBox").slide();</script> 
   
   
   
   
   
   
   
   
</div>

    <div class="foods">
    	<ul>版权所有@2015 .模板收集自 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> -  More Templates<a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></ul>
    	<dl><a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a></dl>


    	
    </div>







</div>

</div>

 -->
</div>



<script src="assets/js/amazeui.min.js"></script>



</body>
</html>