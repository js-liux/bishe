{% extends '../layout.html' %}
{% block title %}用户中心{% endblock %}
{% block content %}
	<div class="container u-container">
	
		<div class="nav-wrap">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation"  class="active"><a href="/user/userInfo">修改用户信息</a></li>
				<li role="presentation"><a href="/user/art">我的文章</a></li>
				<li role="presentation"><a href="/user/question">我的问题</a></li>
				<li role="presentation"><a href="/user/shareProduct">我分享的产品</a></li>
			</ul>
		</div>
			
		<div class="content-wrap">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="/personal/setting" class="cover-tab">我的信息</a>
				</li>
			</ul>
			{% if user %}
			<div class="avatar-wrap">
				<img src="/images/user/{{user.img}}" class="avatar-img"><br>
				<button type="button" class="avatar-btn btn btn-avatar">修改头像</button>
			</div>
			<form method="post" action="/user/change" class="info-form form-horizontal">
				<input type="hidden" name="id" value="28583">
				<input type="hidden" name="pkType" value="userId">
				<div class="form-group">
					<label for="username" class="col-sm-2 control-label">用户名：</label>
					<div class="mt5 col-sm-10"><span>{{user.name}}</span></div>
				</div>
				<div class="form-group">
					<label for="username" class="col-sm-2 control-label">邮箱：</label>
					<div class="col-sm-10">
						<span>{{user.email}}</span>
						<!-- <input id="username" name="name" type="text" placeholder="昵称 (允许中英文、数字、下划线，长度2-16字符）" value="{{user.name}}" class="form-control"> -->
					</div>
				</div>
				<div class="form-group">
					<label for="mobileNum" class="col-sm-2 control-label">手机号：</label>
					<div class="col-sm-10">
						<input id="mobileNum" name="telephone" type="text" placeholder="{{user.telephone}}" value="" class="form-control">
					</div>
				</div>
				<!-- <div class="form-group">
					<label for="gender" class="col-sm-2 control-label">性别：</label>
					<div class="mt5 col-sm-10">
						<label class="mr20">
							{% if user.sex %}
							<input name="gender" type="radio" value="男" checked="checked">
							{% else %}
							<input name="gender" type="radio" value="男">
							{% endif %}
							<span>&nbsp;&nbsp;男</span>
						</label>
						<label>
							{% if user.sex %}
							<input name="gender" type="radio" value="女">
							{% else %}
							<input name="gender" type="radio" value="女"  checked="checked">
							{% endif %}
							<span>&nbsp;&nbsp;女</span>
						</label>
					</div>
				</div> -->
				<!-- <div class="form-group">
					<label for="introduction" class="col-sm-2 control-label">简介：</label>
					<div class="col-sm-10">
						<textarea id="introduction" name="abstract" type="text" placeholder="{{user.abstract}}" class="form-control">
							
						</textarea>
					</div>
				</div> -->
				<div class="form-group">
					<label for="weiboUrl" class="col-sm-2 control-label">微博地址：</label>
					<div class="col-sm-10">
						<input id="weiboUrl" name="weiboAddress" type="text" placeholder="{{user.weiboAddress}}" value="" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="qqNum" class="col-sm-2 control-label">QQ号码：</label>
					<div class="col-sm-10">
						<input id="qqNum" name="qqNum" type="text" placeholder="{{user.qqNum}}" value="" class="form-control">
					</div>
				</div>
				<div role="alert" class="alert alert-danger"></div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn main-search">保存</button>
					</div>
				</div>
			</form>
			{% else %}

			<div class="avatar-wrap">
				<img src="images/user/{{user.img}}" class="avatar-img"><br>
				<button type="button" class="avatar-btn btn btn-primary">修改头像</button>
			</div>
			<form method="post" action="" class="info-form form-horizontal">
				<input type="hidden" name="userId" value="28583">
				<input type="hidden" name="pkType" value="userId">
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">邮箱：</label>
					<div class="mt5 col-sm-10"><span>{{user.email}}</span></div>
				</div>
				<div class="form-group">
					<label for="username" class="col-sm-2 control-label">用户名：</label>
					<div class="col-sm-10">
						<input id="username" name="username" type="text" placeholder="昵称 (允许中英文、数字、下划线，长度2-16字符）" value="{{user.name}}" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="mobileNum" class="col-sm-2 control-label">手机号：</label>
					<div class="col-sm-10">
						<input id="mobileNum" name="mobileNum" type="text" placeholder="请输入输入真实手机号" value="" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="gender" class="col-sm-2 control-label">性别：</label>
					<div class="mt5 col-sm-10">
						<label class="mr20">
							<input name="gender" type="radio" value="男">
							<span>&nbsp;&nbsp;男</span>
						</label>
						<label>
							<input name="gender" type="radio" value="女">
							<span>&nbsp;&nbsp;女</span>
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="introduction" class="col-sm-2 control-label">简介：</label>
					<div class="col-sm-10">
						<textarea id="introduction" name="introduction" type="text" placeholder="请输入一句话简介" class="form-control">
							
						</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="weiboUrl" class="col-sm-2 control-label">微博地址：</label>
					<div class="col-sm-10">
						<input id="weiboUrl" name="weiboUrl" type="text" placeholder="请输入您真实的微博ID" value="" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="qqNum" class="col-sm-2 control-label">QQ号码：</label>
					<div class="col-sm-10">
						<input id="qqNum" name="qqNum" type="text" placeholder="请输入您真实的QQ号码" value="" class="form-control">
					</div>
				</div>
				<div role="alert" class="alert alert-danger"></div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn mian-search">保存</button>
					</div>
				</div>
			</form>

			{% endif %}
		</div>	
	</div>

{% endblock %}