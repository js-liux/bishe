{% extends 'layout.html' %}
{% block content %}

<h1>{{user.name}}</h1>

<div class="container">
	<h1>TWITTER BOOTSTRAP TUTORIAL</h1>	
	<div class='navbar navbar-inverse'>
	  <div class='nav-collapse' style="height: auto;">
	    <ul class="nav">
	      <li class="active"><a href="#">Home</a></li>
	      <li><a href="#">Page One</a></li>
	      <li><a href="#">Page Two</a></li>
	    </ul>
	  </div>
	</div>
	
		<div id='content' class='row-fluid'>
	  <div class='span9 main'>
	    <h2>Main Content Section</h2>
	  </div>
	  <div class='span3 sidebar'>
	    <h2>Sidebar</h2>
	  </div>
	  
	   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p> 

<p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>	
</div>
</div>

	<a href="/user/{{ user.id }}">{{ user.name }}</a>

    <p>http://localhost:1337/user/id</p>
    <p>http://localhost:1337/product/id</p>

 <ul>
	{% for p in products %}
		<li>
			名字：<a href="/product/{{ p.id }}">{{ p.name }}</a>
			<img src="{{ p.img }}">
			<p>描述{{p.desc }}</p>
			<p>价格：{{ p.price }}</p>
		</li>
	{% endfor %}
</ul>

{% endblock %}