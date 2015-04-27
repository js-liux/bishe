
module.exports = {
	loginPage: function(req, res){
		var data = {
			title: '这是title'
		}
		res.view('auth/login',data);
		// res.json({
		//	a: 'a'
		//});
	},
	logout: function(req, res){
		req.session.user = null;
		res.redirect('/');
	},
	
	/**
	 * 登录处理
	 * @param {Object} req
	 * @param {Object} res
	 */
	login: function(req, res){
		var param = req.query;
		var name = req.body.name,
		password = req.body.password;
		User.find().where({
			name: name
		}).then(function(data){
					console.log(name, password);
			console.log(data);
			if (data.length === 0){   // 找不到用户
				var user = {
					name: name,
					password: password
				}
				return User.create(user).then(function(_user){
					console.log(_user);
					if (_user.id) {
						req.session.user = _user; 
						return res.redirect('/');
					}
					res.redirect('/login');
				});
			}else {
				if (password === data[0].password){
					req.session.user = data[0]; 
					console.log('session:',req.session);
					return res.redirect('/');
				}
			
			res.redirect('/login');
			}
		}).catch(function(err){
			sails.log.error(err);
		});
	}
}