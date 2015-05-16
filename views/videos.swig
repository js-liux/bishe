{% extends 'layout.html' %}
{% block content %}
	
	<div class="container">
		<div class="wrap">
			<div class="container products">
			    <div class="row product">
					{% for video in videos %}
					<div class="col-md-4 item">
					<a href="/product/{{video.id}}">
						<img src="/images/video/{{video.imgUrl}}" style="width:300px; height:201px;" alt="" />
						<div class="price">
							<h4>{{video.name}}</h4>
						</div>
					</a>
					</div>
					{% endfor %}
			    </div>
			</div>
		</div>
	</div>
	<nav>
	  <div class="n-pagination">
	  <ul class="pagination ">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		   {% if videos  %} 

		    {{for i in videos.length}}
		    <li><a href="#">1</a></li>
		    {% endfor %}
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li> 
		    {% endif %}
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
	  </ul>
	  </div>
	</nav>
{% endblock %}