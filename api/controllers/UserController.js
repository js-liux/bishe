module.exports = {
	/**
	 * 根据用户ID 输出用户的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	bower: function(req, res) {
		var userID = req.param('id');
		User.find().where({
			id: userID
		}).then(function(users) {
			var user;
			if (users.length > 0) {
				user = users[0];
			}
			res.view('user/userInfo', {
				user: user
			})
		});
	},

	updata: function(req, res) {
		console.log("updata");
		var userID = req.param('id');
		var name = req.body.name,
			email = req.body.email,
			telephone = req.body.telephone,
			/*sex = req.body.sex,*/
			abstract = req.body.abstract,
			weiboAddress = req.body.weiboAddress,
			qqNum = req.body.qqNum;
		var newUser = {
			name: name,
			email: email,
			telephone: telephone,
			/*sex: sex,*/
			abstract: abstract,
			weiboAddress: weiboAddress,
			qqNum: qqNum
		}
		User.find().where({
			id: userID
		}).then(function(users) {
			User.updata(users, newUser, function(userss) {
				var user;
				if (userss.length > 0) {
					user = userss[0];
				}
				res.view('user/userInfo', {
					user: user
				})
			})
		});

	}

}