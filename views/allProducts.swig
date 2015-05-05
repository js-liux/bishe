{% extends 'layout.html' %}
{% block title %}全部商品{% endblock %}
	
{% block content %}
	<div class="container">
		<div role="tabpanel">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
		    <li role="presentation" class="active"><a href="#wear" aria-controls="wear" role="tab" data-toggle="tab">穿戴</a></li>
		    <li role="presentation"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">家居</a></li>
		    <li role="presentation"><a href="#sport" aria-controls="sport" role="tab" data-toggle="tab">运动</a></li>
		    <li role="presentation"><a href="#tour" aria-controls="tour" role="tab" data-toggle="tab">出行</a></li>
		    <li role="presentation"><a href="#entertainment" aria-controls="entertainment" role="tab" data-toggle="tab">娱乐</a></li>
		  </ul>

		  <!-- Tab panes -->
			<div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="wear">
			    	{% for wear in wears %}
			    		<div class="row">
							<div class="col-md-4">
							  	<div class="post-16584 post type-post status-publish format-standard has-post-thumbnail hentry category-viewpoint tag-3468 tag-3467 st-category-wrapper news-list" id="post-16584">
							        <div class="post-thumbnail hover-thumb">
							            <span class="had-thumb">
													<a href="" title="" rel="bookmark">
														<img alt="" src="">
													</a>                           		
							            </span>  
							            <div class="clear"></div>
							        </div>
					        
							        <div class="post-content">
							            <h2 class="post-title">
							            	<a title="" rel="bookmark" href="">{{wear.name}}</a>
							            </h2> 
							        </div>
						    		<div class="clear"></div>   
								</div>
						  	</div>
						</div>
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="home">家居
					{% for home in homes %}
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="sport">运动
			    	{% for sport in sports %}
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="tour">出行
			    	{% for tour in tours %}
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="entertainment">娱乐
			    	{% for entertainment in entertainments %}
			    	{% endfor %}
			    </div>

			</div>
		</div>
	</div>
		
{% endblock %}	
