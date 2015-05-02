{% extends 'layout.html' %}

{% block title %}主页{% endblock %}
		
		{% block head %}
  		{% parent %}
		
		<!-- start slider -->
		<script type="text/javascript">
			$(function() {
				$('#da-slider').cslider();
			});
		</script>

		<script>
			$(document).ready(function() {
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
		
		<!-- start slider -->
		<div id="da-slider" class="da-slider">
			<div class="da-slide">
				<h2>welcome to aditii</h2>
				<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>
				<a href="details.html" class="da-link">shop now</a>
				<div class="da-img">
					<img src="/images/slider1.png" alt="image01" />
				</div>
			</div>
			<div class="da-slide">
				<h2>Easy management</h2>
				<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
				<a href="details.html" class="da-link">shop now</a>
				<div class="da-img">
					<img src="/images/slider2.png" alt="image01" />
				</div>
			</div>
			<div class="da-slide">
				<h2>Revolution</h2>
				<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
				<a href="details.html" class="da-link">shop now</a>
				<div class="da-img">
					<img src="/images/slider3.png" alt="image01" />
				</div>
			</div>
			<div class="da-slide">
				<h2>Quality Control</h2>
				<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
				<a href="details.html" class="da-link">shop now</a>
				<div class="da-img">
					<img src="/images/slider4.png" alt="image01" />
				</div>
			</div>
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
		</div>
		<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<!----start-cursual---->
		<div class="wrap">
			<!----start-img-cursual---->
			<div id="owl-demo" class="owl-carousel">
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c1.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded shoes</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c2.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded tees</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c3.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded jeens</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c2.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded tees</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c1.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded shoes</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c2.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded tees</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
				<div class="item" onClick="location.href='details.html';">
					<div class="cau_left">
						<img class="lazyOwl" data-src="/images/c3.jpg" alt="Lazy Owl Image">
					</div>
					<div class="cau_left">
						<h4><a href="details.html">branded jeens</a></h4>
						<a href="details.html" class="btn">shop</a>
					</div>
				</div>
			</div>
			<!----//End-img-cursual---->
		</div>
		<!-- start main1 -->
		<div class="main_bg1">
			<div class="wrap">
				<div class="main1">
					<h2>featured products</h2>
				</div>
			</div>
		</div>
		<!-- start main -->
		<div class="main_bg">
			<div class="wrap">
				<div class="main">
					<!-- start grids_of_3 -->
					<div class="grids_of_3">
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic1.jpg" alt="" />
								<h3>branded shoes</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic2.jpg" alt="" />
								<h3>branded t-shirts</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic3.jpg" alt="" />
								<h3>branded tees</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="grids_of_3">
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic4.jpg" alt="" />
								<h3>branded bags</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic5.jpg" alt="" />
								<h3>ems women bag</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="grid1_of_3">
							<a href="details.html">
								<img src="../assets/images/pic6.jpg" alt="" />
								<h3>branded cargos</h3>
								<div class="price">
									<h4>$300<span>indulge</span></h4>
								</div>
								<span class="b_btm"></span>
							</a>
						</div>
						<div class="clear"></div>
					</div>
					<!-- end grids_of_3 -->
				</div>
			</div>
		</div>
		
		

		<!--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Open modal for @fat</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>
...more buttons...-->

		

		<!--<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
						<h4 class="modal-title"><i class="fa fa-plus"></i>分享新产品</h4>
					</div>
					<div class="modal-body clearfix">
						<button class="btn" data-dismiss="modal" data-target="#new-thing-from-url-modal" data-toggle="modal"><i class="fa fa-globe fa-fw"></i>从网站收集</button>
						<button class="btn" data-dismiss="modal" data-target="#new-thing-from-local" id="btn-to-new-local-thing-modal"><i class="fa fa-cloud-upload fa-fw"></i>本地上传</button>
					</div>
				</div>
			</div>
		</div>-->


{% endblock %}