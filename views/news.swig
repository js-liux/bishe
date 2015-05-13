{% extends 'layout.html' %}
{% block content %}
	<div class="container">
		{% for article in articles %}
<!-- 		<div class="row"> -->
		  <div class="col-md-4">
		  	<div class="" id="post-16584">
		        <div class="post-thumbnail hover-thumb">
		            <span class="had-thumb">
						<a href="" rel="bookmark">
							<img alt="" src="/images/news/{{article.imgUrl}}">
						</a>                           		
		            </span>  
		            <!-- <div class="clear"></div> -->
		        </div>
        
		        <div class="post-content">
		            <h2 class="post-title">
		            	<a rel="bookmark" href="">{{article.name}}</a></h2>
		            <div class="post-meta">
		                  <span class="date">2014 年 12 月 3 日</span>
		                                   - <span class="author">
		                  <a href="http://www.mongcz.com/archives/author/gsh0913" title="由gsh0913发布" rel="author">gsh0913</a>     
		              	  </span>
		                  - <span>暂无评论</span>
		            </div>
		            <div class="post-excerpt">
		                <p>{{article.intro}}</p>
		            </div>
		            <div class="read-more">
		                <a class="read-more-button" href="http://www.mongcz.com/archives/16584">继续阅读
		                </a>
		            </div>
		        </div>
		    	<!-- <div class="clear"></div>  -->  
			</div>
		  </div>
		{% endfor %}
		  
	<nav>
	  <div class="n-pagination">
	  <ul class="pagination ">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
	  </ul>
	  </div>
	</nav>


{% endblock %}