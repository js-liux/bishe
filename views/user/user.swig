{% extends '../layout.html' %}
{% block content %}
<h1>这是用户页面</h1>


{% if user %}
	{{user.name}}
	
	{{ user.password}}
	
{% endif %}

{% endblock %}