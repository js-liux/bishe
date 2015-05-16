{% extends '../layout.html' %}
{% block title %}我的文章{% endblock %}
{% block content %}

	<div class="container u-container">	
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" ><a href="/user/userInfo">修改用户信息</a></li>
				<li role="presentation"><a href="/user/art">我的文章</a></li>
				<li role="presentation"  class="active"><a href="/user/question">我的问题</a></li>
				<li role="presentation"><a href="/user/shareProduct">我分享的产品</a></li>
			</ul>
		</div>
			
		<div class="content-wrap">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>问题</th>
							<th>回答</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					{% for question in questions %}
						<tr data-id="8a2bff934d063378014d2043c8fa0081">
							<td>
								<a href="" target="_blank">{{question.title}}</a>
							</td>
							<td>
								{% for answer in questions.answers %}
								{{answer.content}}
								{% endfor %}
							</td>
							<td>
								<a href="" target="_blank">查看</a>
								<span>&nbsp;</span>
								<a href="" target="_blank">删除</a>
							</td>
						</tr>
					{% endfor %}
					</tbody>
				</table>
			</div>

		</div>	
	</div>
{% endblock %}