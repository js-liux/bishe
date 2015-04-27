{% extends 'layout.html' %}
{% block content %}
<h1>这是产品页面</h1>


{% if product %}
	{{product.name}}
	
	{{ product.content }}
	
{% endif %}

{% endblock %}