module.exports = {
	/**
	 * 主页数据加载
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	showUser: function(req, res) {
		var user = req.session.user;
		User.find().then(function(users) {
			console.log("admin all user");
			res.locals.users = users;
			res.view("admin/adminUser");
		});
	},
	showProduct: function(req, res) {
		var user = req.session.user;
		AllProduct.find().then(function(products) {
			console.log("admin all user");
			res.locals.products = products;
			res.view("admin/adminProduct");
		});
	},
	showArticle: function(req, res) {
		var user = req.session.user;
		Article.find().then(function(articles) {
			console.log("admin all user");
			res.locals.articles = articles;
			res.view("admin/adminArticle");
		});
	},
	showVideo: function(req, res) {
		var user = req.session.user;
		Video.find().then(function(videos) {
			console.log("admin all Video");
			res.locals.videos = videos;
			res.view("admin/adminVideo");
		});
	},


}