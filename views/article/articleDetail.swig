{% extends '../layout.html' %}
{% block content %}
	/*
	需要文章和用户的数据，页面主要显示文章的内容。todo:评论的数量
	 */
	{% if article %}
	<div class="content-wrapper eight columns b0">
        <h1 class="page-title">{{article.name}}</h1>    
     	<div class="page-meta-wrapper">
            <span>By        
            	<span class="author">
		         <a href="/user/{{user.id}}" title="由gsh0913发布" rel="author">{{user.name}}</a>       
		         </span>
		         <span class="meta-sep">|</span> 
		         
		                 {{article.createdAt}} 
		         <span class="meta-sep">|</span> 
		                 
		         <a class="link-comments" href="http://www.mongcz.com/archives/18637#comments">暂无评论</a>
        	</span>       
    	</div>
    <div class="page-content content"> 
    	{{article.content}}
    </div>             
 	{% endif %}    
 {% endblock %}