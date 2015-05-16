{% extends '../layout.html' %}
{% block title %}我的文章{% endblock %}
{% block content %}

	<div class="container u-container">	
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" ><a href="/user/userInfo">修改用户信息</a></li>
				<li role="presentation" class="active"><a href="/user/art">我的文章</a></li>
				<li role="presentation"><a href="/user/question">我的问题</a></li>
				<li role="presentation"><a href="/user/shareProduct">我分享的产品</a></li>
			</ul>
		</div>
			
		<div class="content-wrap">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>文章标题</th>
							<th>状态</th>
							<th>动作</th>
							<th>编辑时间</th>
						</tr>
					</thead>
					<!-- <tbody>
						
					</tbody> -->
					<tbody>
					{% for article in articles %}
						<tr data-id="8a2bff934d063378014d2043c8fa0081">
							<td>
								<a href="/article/{{article.id}}" target="_blank">{{article.name}}</a>
							</td>
							<td>
								{% if article.state %}
								<span>已发布</span>
								{% else %}
								<span>未发布</span>
								{% endif %}
							</td>
							<td>
								<a href="/article/{{article.id}}" target="_blank">查看</a>
								<span>&nbsp;</span>
								<a href="/article/edit/{{article.id}}" target="_blank">删除</a>
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