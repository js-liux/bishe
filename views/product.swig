{% extends 'layout.html' %}
{% block content %}
	<div class="container p-container">
		<div class="title"><h1 style="color: #777;">智能机器人</h1></div>
		<div class="buyUrl"><a href="{{}}">购买链接</a></div>
		

		<div role="tabpanel">

		    <!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">产品
				</a></li>
				<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">
					评测
				</a></li>
				<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">
					评论
				</a></li>
			</ul>

				<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					<ul class="js-bxslider" >
						<li><img src="../images/qikoo/slider1.jpg" /></li>
						<li><img src="../images/qikoo/slider2.jpg" /></li>
						<li><img src="../images/qikoo/slider3.jpg" /></li>
						<li><img src="../images/qikoo/slider4.jpg" /></li>
					</ul>

					<!-- JiaThis Button BEGIN -->
					<div class="jiathis_style p-share">
						<span class="jiathis_txt">分享到：</span>
						<a class="jiathis_button_qzone">QQ空间</a>
						<a class="jiathis_button_tsina">新浪微博</a>
						<a class="jiathis_button_tqq">腾讯微博</a>
						<a class="jiathis_button_weixin">微信</a>
						<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
						<a class="jiathis_counter_style"></a>
					</div>
					<!-- JiaThis Button END -->

					<div id="SOHUCS"></div>
				</div>
				<div role="tabpanel" class="tab-pane" id="evaluation">
					/*判断是否有评测*/
					<div class="evaluation">
						
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="comments">
					<div>
						<div class="comments">
							<div class="p-user">
								
							</div>
							<div class="commentsContent">
								<textarea name="commentsContent" cols="30" rows="10"></textarea>
							</div>

						</div>

					</div>
				</div>
			</div>

		</div>
		
	</div>


		{% if product %}
			<h1>{{}}</h1>
			{{product.name}}
			
			{{ product.content }}
			
		{% endif %}

    <script>
      (function(){
        var appid = 'cyrKR237r',
        conf = 'prod_c4a78da47621fa2e1513b6f95a7ce8fb';
        var doc = document,
        s = doc.createElement('script'),
        h = doc.getElementsByTagName('head')[0] || doc.head || doc.documentElement;
        s.type = 'text/javascript';
        s.charset = 'utf-8';
        s.src =  'http://assets.changyan.sohu.com/upload/changyan.js?conf='+ conf +'&appid=' + appid;
        h.insertBefore(s,h.firstChild);
      })()
    </script>
    <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>

{% endblock %}