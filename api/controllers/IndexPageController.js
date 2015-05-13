module.exports = {
	/**
	 * 主页数据加载
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	show: function(req, res) {
		//两个模块1.轮播图2.特别的商品(有详细制作图片的商品）	
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
				console.log(req.session.user);
				var data = {
					productList: productList,
					sliderList: sliderList
				};
				res.view('index', data);
			});
		});

	}
}