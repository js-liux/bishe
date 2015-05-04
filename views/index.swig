{% extends 'layout.html' %}

{% block title %}主页{% endblock %}
		
		{% block head %}
  		{% parent %}
		
		<!-- start slider -->
		<script type="text/javascript">
			$(function() {
			console.log("slider");
				$('#da-slider').cslider();
			});
		</script>

		<script>
			$(document).ready(function() {
			console.log("index ready");
				$("#owl-demo").owlCarousel({
					items: 4,
					lazyLoad: true,
					autoPlay: true,
					navigation: true,
					navigationText: ["", ""],
					rewindNav: false,
					scrollPerPage: false,
					pagination: false,
					paginationNumbers: false,
				});
			});
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1200);
				});
			});
		</script>
		
		{% endblock %}
		

{% block content %}

	<div class="container-fluid">
		<ul class="js-bxslider" >
			{% for slider in sliderList %}
				 <li><a href="product/:{{slider.id}}"><img src="images/qikoo/{{slider.imgUrl}}" title="{{slider.name}}"/></a></li>
			{% endfor %}
		</ul>
	</div>
				
		<!----start-cursual---->
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

			<!----start-img-cursual---->
			<!-- {% for product in sliderList %}
			<div id="owl-demo" class="owl-carousel">
				<div class="item">
					<a href="/product/{{product.id}}">
						<img class="lazyOwl" src="/images/qikoo/{{product.imgUrl}}"  alt="Lazy Owl Image">
					</a>
					<div class="cau_left">
						<h4><a href="">{{product.name}}</a></h4>
					</div>
				</div>
				
			</div>
			{% endfor %} -->

			<!----//End-img-cursual---->
		
		<!-- start main1 -->
		<<!-- div class="main_bg1">
			<div class="wrap">
				<div class="main1">
					<h2>主要商品</h2>
				</div>
			</div>
		</div> -->
		<!-- start main -->

		
</div>
		
{% endblock %}