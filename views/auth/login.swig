{% extends '../layout.html' %}
{% block content %}
<!--登录时，如果没账号，自动注册然后登录-->

<div class="container">
 <section class="loginBox row-fluid">
     <section class="span7 left">
        <h2>用户登录</h2>

		<form action="/login" method="post">
			<input type="text" name="name" id="" placeholder="用户名"/ class="">
			<input type="password" name="password" id="" placeholder="密码" />
			<input type="submit" name="" id="" value="登录"/>
		</form>
  	 </section>
 </section>
</div>
<h1>{{=title }}</h1>
{% endblock %}

