{% extends '../layout.html' %}
{% block title %}用户中心{% endblock %}
{% block content %}
	<div class="container u-container">
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation"  class="active"><a href="/admin/adminUser">用户管理</a></li>
				<li role="presentation"><a href="/admin/adminArticle">文章管理</a></li>
				<li role="presentation"><a href="/admin/adminProduct">产品管理</a></li>
				<li role="presentation"><a href="/admin/adminVideo">视频管理</a></li>
			</ul>
		</div>
			
		<div class="content-wrap">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>用户名</th>
							<th>动作</th>
						</tr>
					</thead>
					<!-- <tbody>
						
					</tbody> -->
					<tbody>
					{% for user in users %}
						<tr>
							<td>
								<a href="/user/{{user.id}}" target="_blank">{{user.name}}</a>
							</td>
							<td>
								<a href="/user/{{article.id}}" target="_blank">查看</a>
								<span>&nbsp;</span>
								<a href="/user/edit/{{user.id}}" target="_blank">编辑</a>
							</td>
						</tr>
					{% endfor %}
					</tbody>
				</table>
			</div>
		</div>	
	</div>

{% endblock %}