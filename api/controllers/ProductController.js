var dirname = require('path').resolve(__dirname, '../../.tmp/public/uploads');
console.log(dirname);

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
	},
	upload: function (req, res) {

	  req.file('file').upload({
	// don't allow the total upload size to exceed ~10MB
	    maxBytes: 10000000,
	    dirname: dirname
	  },function whenDone(err, uploadedFiles) {
	    if (err) {
	      return res.negotiate(err);
	    }
	
	    // If no files were uploaded, respond with an error.
	if (uploadedFiles.length === 0){
	  return res.badRequest('No file was uploaded');
	    }
		res.json({
			url: uploadedFiles[0].fd
		})
		
	  });
},
}