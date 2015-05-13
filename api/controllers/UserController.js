module.exports = {
	/**
	 * 根据用户ID 输出用户的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	show: function(req, res) {
		/*var userID = req.param('id');*/
		/*User.find().where({
			id: userID
		}).then(function(users) {
			var user;
			if (users.length > 0) {
				user = users[0];
			}
			res.view('user/userInfo', {
				user: user
			})
		});*/
		res.locals.sessionUser = req.session.user;
		var user = req.session.user;
		res.view('user/userInfo', {
			user: user
		})
	},

	change: function(req, res) {
		var user = req.session.user;
		var telephone = parseInt(req.body.telephone) || user.telephone,
			weiboAddress = req.body.weiboAddress || user.weiboAddress,
			qqNum = parseInt(req.body.qqNum) || user.qqNum;
		var newUser = {
			telephone: telephone,
			weiboAddress: weiboAddress,
			qqNum: qqNum
		};
		User.update(user, {
			telephone: telephone,
			weiboAddress: weiboAddress,
			qqNum: qqNum
		}, function(err) {
			console.log("err" + err);
			if (err) return res.negotiate(err);
			return res.ok();
		}).
		catch (function(err) {
			sails.log.error(err);
		});

	}
}