{% extends '../layout.html' %}
{% block title %}用户中心{% endblock %}
{% block content %}
	<div class="container u-container">
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation"><a href="/admin/adminUser">用户管理</a></li>
				<li role="presentation"><a href="/admin/adminArticle">文章管理</a></li>
				<li role="presentation"  class="active"><a href="/admin/adminProduct">产品管理</a></li>
				<li role="presentation"><a href="/admin/adminVideo">视频管理</a></li>
			</ul>
		</div>
			 
		<div class="content-wrap">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>名称</th>
							<th>动作</th>
						</tr>
					</thead>
					<!-- <tbody>
						
					</tbody> -->
					<tbody>
					{% for product in products %}
						<tr>
							<td>
								<a href="/product/{{product.id}}" target="_blank">{{product.name}}</a>
							</td>
							<td>
								<a href="/product/{{product.id}}" target="_blank">查看</a>
								<span>&nbsp;</span>
								<a href="/product/edit/{{product.id}}" target="_blank">编辑</a>
							</td>
						</tr>
					{% endfor %}
					</tbody>
				</table>
			</div>
		</div>	
	</div>

{% endblock %}