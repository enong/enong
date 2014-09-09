<%@ page language="java" pageEncoding="UTF-8"%>
<div class="panel-group" id="accordion">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h3 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">商品</a>
			</h3>
		</div>

		<div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
			<div class="panel-body">
				<ul class="nav nav-pills nav-stacked">
					<li id="menu_category"><a href="${ctx}/admin/category">商品目录管理</a></li>
					<li id="menu_goods"><a href="${ctx}/admin/goods">商品管理</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="panel panel-info">
		<div class="panel-heading">
			<h3 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">订单</a>
			</h3>
		</div>
		<div id="collapse2" class="panel-collapse collapse">
			<div class="panel-body">
				<ul class="nav nav-pills nav-stacked" >
					<li id="menu_order"><a href="${ctx}/admin/order">订单管理</a></li>
					<li id="menu_article"><a href="${ctx}/admin/article">文章管理</a></li>
					<li id="menu_return"><a href="${ctx}/admin/return">退款管理</a></li>
					<li id="menu_static"><a href="${ctx}/admin/static">数据管理</a></li>
				</ul>
			</div>
		</div>
	</div>
	
</div>

