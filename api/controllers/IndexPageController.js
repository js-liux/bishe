module.exports = {
	
/**
 * 主页数据加载
 * @param  {[type]} req [description]
 * @param  {[type]} res [description]
 * @return {[type]}     [description]
 */
	bower: function (req, res){
		//两个模块1.轮播图2.特别的商品(有详细制作图片的商品）
		
		var sliderList;
		var productList;
		AllProduct.find().where({
			ownerCategory: 1
		}).then(function(sliders){
			if (sliders.length > 0) {
				sliderList = sliderList;
			}
		});

		
			/*User.find().where({
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

			res.view('index',{
					user: user
		})*/
	}
}