module.exports = {
	loginPage: function(req, res) {
		var loginErrMessage = "请重新登录";
		res.view('/', loginErrMessage);
		// res.json({
		//	a: 'a'
		//});
	},
	logout: function(req, res) {
		req.session.user = null;
		req.session.authenticated = false;
		res.redirect('/');
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
						return res.view('/');
					}
					//创建用户失败，显示重新登录
					var loginErrMessage = "请重新登录";
					res.view('/', loginErrMessage);
				});
			} else { //有该用户，实现密码的匹配
				if (password === data[0].password) {
					console.log("login data" + data[0]);
					req.session.user = data[0];
					res.locals.user = data[0];
					req.session.authenticated = true;
					return res.view('/');
				}

				var loginErrMessage = "请重新登录";
				res.view('/', loginErrMessage);
			}
		}).
		catch (function(err) {
			sails.log.error(err);
		});
	}
}