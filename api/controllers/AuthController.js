module.exports = {
	loginPage: function(req, res) {
		var loginErrMessage = "请重新登录";
		res.view('index', loginErrMessage);
		// res.json({
		//	a: 'a'
		//});
	},
	logout: function(req, res) {
		req.session.user = null;
		req.session.authenticated = false;

		var sliderList;
		var productList;
		AllProduct.find().where({
			ownerCategory: 1
		}).then(function(sliders) {
			sliderList = sliders;
			AllProduct.find().where({
				ownerCategory: 2
			}).then(function(products) {
				productList = products;
				res.locals.productList = productList;
				res.locals.sliderList = sliderList;
				return res.view('index');
			});
		});
		//res.redirect('index');
	},

	/**
	 * 登录处理
	 * @param {Object} req
	 * @param {Object} res
	 */
	login: function(req, res) {
		var param = req.query;
		var name = req.body.name,
			password = req.body.password;
		User.find().where({
			name: name
		}).then(function(data) {
			//管理员登陆
			if (name == 'admin' && data[0].password == 'admin') {
				return res.view('admin/adminUser');
			} else {

			}

			//普通用户登陆
			if (data.length === 0) { // 找不到用户
				var user = {
					name: name,
					password: password
				}
				return User.create(user).then(function(_user) {
					console.log(_user);
					if (_user.id) { //如果已创建该用户
						req.session.user = _user;
						req.session.authenticated = true;
						res.locals.user = _user;

						var sliderList;
						var productList;
						AllProduct.find().where({
							ownerCategory: 1
						}).then(function(sliders) {
							sliderList = sliders;
							AllProduct.find().where({
								ownerCategory: 2
							}).then(function(products) {
								productList = products;
								res.locals.sessionUser = req.session.user;
								res.locals.user = data[0];
								res.locals.productList = productList;
								res.locals.sliderList = sliderList;
								return res.view('index');
							});
						});
						return;
						/*return res.view('index');*/
					}
					//创建用户失败，显示重新登录
					var loginErrMessage = "请重新登录";
					res.view('index', loginErrMessage);
				});
			} else { //有该用户，实现密码的匹配
				if (password === data[0].password) {
					console.log("login data" + data[0]);
					req.session.user = data[0];
					req.session.authenticated = true;

					var sliderList;
					var productList;
					AllProduct.find().where({
						ownerCategory: 1
					}).then(function(sliders) {
						sliderList = sliders;
						AllProduct.find().where({
							ownerCategory: 2
						}).then(function(products) {
							productList = products;
							res.locals.sessionUser = req.session.user;
							res.locals.user = data[0];
							res.locals.productList = productList;
							res.locals.sliderList = sliderList;
							return res.view('index');
						});
					});
					return;
				}

				var loginErrMessage = "请重新登录";
				res.view('index', loginErrMessage);
			}
		}).
		catch (function(err) {
			sails.log.error(err);
		});
	}

}