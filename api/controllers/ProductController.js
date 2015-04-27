module.exports = {
	
	/**
	 * 根据产品ID 输出产品的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	bower: function (req, res){
		var productID = req.param('id');
		Product.find().where({
			id: productID
		}).then(function(products){
			var product;
			if(products.length > 0){
				product = products[0];
			}
			res.view('product',{
				product: product
			})
		});
	}
}