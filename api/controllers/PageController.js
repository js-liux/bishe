module.exports = {
	homepage: function(req, res){
		var user = req.session.user;
		Product.find({
			owner: 1
		}).then(function(data){
			var result = {
				user: user,
				products: data
			};
			console.log(result.products);
			res.view('homepage', result);
		});
	}
}