module.exports = {
	/**
	 * 视频页面的加载
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	show: function(req, res) {
		Video.find().then(function(videos) {
			res.locals.videos = videos;
			res.locals.sessionUser = req.session.user;
			res.view('videos');
		});
	}
}