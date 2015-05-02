{% extends 'layout.html' %}

{% block title %}全部商品{% endblock %}
{% block head %}
  		{% parent %}
$(function () {
		
		var filterList = {
		
			init: function () { 
			
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		// Run the show!
		filterList.init();
		
		
	});	
	jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
	});
	</script>
		{% endblock %}
		

{% block content %}
<!-- start main -->
<div class="main_bg">
<div class="wrap">	
	<div class="main">
	<!-- start gallery_sale  -->
			<div class="gallery1">
					<div class="container">
					<ul id="filters" class="clearfix">
						<li><span class="filter active" data-filter="app card icon logo web">All</span></li>
						<li><span class="filter" data-filter="app card web">men</span></li>
						<li><span class="filter" data-filter="icon web card">women</span></li>
						<li><span class="filter" data-filter="web app icon card">Watches</span></li>
						<li><span class="filter" data-filter="icon app web logo">Accessories</span></li>
					</ul>
			<div id="portfoliolist">
			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">				
					<a  href="details" style="width:100;height:100">
						<img src="/images/sale_pic1.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">ethnic fashion guide: sarees</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic2.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">fasttrack: watches</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>		
			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<a  href="details.html">
						<img src="/images/sale_pic3.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">ethnic fashion guide: dresses</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">ethnic fashion guide: tees</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">
					<a  href="details.html">
						<img src="/images/sale_pic5.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">ethnic fashion guide: tees</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic6.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">fasttrack: watches</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<a  href="details.html">
						<img src="/images/sale_pic7.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Sonor's Design</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic8.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Typography Company</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">
					<a  href="details.html">
						<img src="/images/sale_pic9.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Weatherette</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic10.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">BMF</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
					
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic11.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Techlion</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			
			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<a  href="details.html">
						<img src="/images/sale_pic12.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">KittyPic</a>
							<span class="text-category">indulge</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																																							
		</div>
	</div><!-- container -->
	<script type="text/javascript">$('body').flipLightBox()</script>
	<div class="clear"> </div>
	</div>

</div>
</div>	
{% endblock %}	
