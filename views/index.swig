{% extends 'layout.html' %}

{% block title %}主页{% endblock %}
		
{% block content %}
	<div class="container-fluid">
		<ul class="js-bxslider" >
			{% for slider in sliderList %}
				 <li><a href="product/:{{slider.id}}"><img src="images/qikoo/{{slider.imgUrl}}" title="{{slider.name}}"/></a></li>
			{% endfor %}
		</ul>
	</div>
				
		<!--start-cursual-->
		<div class="wrap">
			<div class="container products">
			  <div class="row product">
					{% for product in productList %}
					<div class="col-md-4 item">
					<a href="/product/{{product.id}}">
						<img src="/images/qikoo/{{product.imgUrl}}" style="width:300px; height:201px;" alt="" />
						<div class="price">
							<h4>{{product.name}}</h4>
						</div>
					</a>
					</div>
					{% endfor %}
			  </div>
			</div>
		</div>
{% endblock %}
		
		
