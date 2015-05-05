module.exports = {

	/**
	 * 在用户中心返回所有文章列表,根据用户的id去找用户发表的所有文章
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	show: function(req, res) {
		var user = req.session.user;
		console.log("articleController user" + user);
		var userId = user.id;
		console.log("wenzhang");
		Article.find().where({
			owner: userId
		}).then(function(articles) {
			res.locals.articles = articles;
			res.view('user/article');
		});
	},
	/**
	 * 根据文章id查找，文章的详细展示
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	detail: function(req, res) {
		console.log('article detail');
		var articleId = req.param('id');
		Article.find().where({
			id: articleId
		}).then(function(article) {
			//article是不是数组
			var userId = article[0].owner;
			User.find().where({
				id: userId
			}).then(function(user) {
				res.locals.article = article[0];
				res.locals.user = user[0];
				res.view('article/articleDetail');
			});
		});
	},
	/**
	 * 根据文章是否已发布来决定是否显示，资讯页面显示文章的大概信息。
	 * 注意：所有返回的对象全都是数组
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	newsList: function(req, res) {
		console.log("news list");
		Article.find().where({
			state: 1
		}).then(function(articles) {
			console.log("owner" + articles[0].id);
			var userId = articles[0].owner;
			console.log("owner" + userId);
			User.find().where({
				id: userId
			}).then(function(user) {
				console.log("userid" + user[0].id);
				//res.locals.articles = articles;
				var lengthaa = articles.length / 3;
				var data = {
					articles: articles
				}
				console.log("articles" + articles);
				//res.locals.articleNum = 3; /*Math.floor(articles.length / 3)*/
				res.locals.user = user[0];
				res.view('news', data);
			});
		});
	}
}