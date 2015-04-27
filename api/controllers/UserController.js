module.exports = {
		/**
	 * 根据用户ID 输出用户的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	bower: function (req, res){
		var userID = req.param('id');
		User.find().where({
			id: userID
		}).then(function(users){
			var user;
			if(users.length > 0){
				user = users[0];
			}
			res.view('user/user',{
				user: user
			})
		});
	}
}