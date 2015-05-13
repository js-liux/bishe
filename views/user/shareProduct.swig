{% extends '../layout.html' %}
{% block title %}我分享的产品{% endblock %}
{% block content %}

	<div class="container u-container">	
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" ><a href="/user/userInfo">修改用户信息</a></li>
				<li role="presentation"><a href="/user/art">我的文章</a></li>
				<li role="presentation"><a href="/user/question">我的问题</a></li>
				<li role="presentation" class="active"><a href="/user/shareProduct">我分享的产品</a></li>
			</ul>
		</div>
			
		<div class="content-wrap">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>产品名称</th>
							<th>产品内容</th>
							<th>动作</th>
							<th>编辑时间</th>
						</tr>
					</thead>
					<!-- <tbody>
						
					</tbody> -->
					<tbody>
					{% for product in products %}
						<tr data-id="8a2bff934d063378014d2043c8fa0081">
							<td>
								<a href="/article/{{article.id}}" target="_blank">{{product.name}}</a>
							</td>
							<td>
								{{product.content}}
								
							</td>
							<td>
								<a href="/article/{{article.id}}" target="_blank">查看</a>
								<span>&nbsp;</span>
								<a href="/article/edit/{{article.id}}" target="_blank">编辑</a>
							</td>
							<td>
								<span>2小时前</span>
							</td>
						</tr>
						{% endfor %}
					</tbody>
				</table>
			</div>

		</div>	
	</div>

{% endblock %}