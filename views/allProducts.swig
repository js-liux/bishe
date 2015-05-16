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
			<div class="tab-content category-content">
			    <div role="tabpanel" class="tab-pane active" id="wear">
			    	{% for wear in wears %}
			    		<div class="col-md-4 item">
							<a href="/product/{{wear.id}}">
								<img src="/images/all/{{wear.imgUrl}}" alt="{{wear.name}}" style="width:300px; height:285px;" alt="" />
								<div class="price">
									<h4>{{wear.name}}</h4>
								</div>
							</a>
						</div>
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="home">
					{% for home in homes %}
						<div class="col-md-4 item">
							<a href="/product/{{home.id}}">
								<img src="/images/all/{{home.imgUrl}}" alt="{{home.name}}" style="width:300px; height:285px;" alt="" />
								<div class="price">
									<h4>{{home.name}}</h4>
								</div>
							</a>
						</div>
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="sport">
			    	{% for sport in sports %}
			    		<div class="col-md-4 item">
							<a href="/product/{{sport.id}}">
								<img src="/images/all/{{sport.imgUrl}}" alt="{{sport.name}}" style="width:300px; height:285px;" alt="" />
								<div class="price">
									<h4>{{sport.name}}</h4>
								</div>
							</a>
						</div>
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="tour">
			    	{% for tour in tours %}
			    		<div class="col-md-4 item">
							<a href="/product/{{tour.id}}">
								<img src="/images/all/{{tour.imgUrl}}" alt="{{tour.name}}" style="width:300px; height:285px;" />
								<div class="price">
									<h4>{{tour.name}}</h4>
								</div>
							</a>
						</div>
			    	{% endfor %}
			    </div>

			    <div role="tabpanel" class="tab-pane" id="entertainment">
			    	{% for entertainment in entertainments %}
			    		<div class="col-md-4 item">
							<a href="/product/{{entertainment.id}}">
								<img src="/images/all/{{entertainment.imgUrl}}" alt="{{entertainment.name}}" style="width:300px; height:285px;" />
								<div class="price">
									<h4>{{entertainment.name}}</h4>
								</div>
							</a>
						</div>
			    	{% endfor %}
			    </div>

			</div>
		</div>
	</div>
		
{% endblock %}	
