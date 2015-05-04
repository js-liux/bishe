var dirname = require('path').resolve(__dirname, '../../.tmp/public/uploads');

module.exports = {

	/**
	 * 根据产品ID 输出产品的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	bower: function(req, res) {
		var productID = req.param('id');
		Product.find().where({
			id: productID
		}).then(function(products) {
			var product;
			if (products.length > 0) {
				product = products[0];
			}
			res.locals.product = product;
			res.view('product');
		});
	},
	upload: function(req, res) {
		req.file('file').upload({
			// don't allow the total upload size to exceed ~10MB
			maxBytes: 10000000,
			dirname: dirname
		}, function whenDone(err, uploadedFiles) {
			if (err) {
				return res.negotiate(err);
			}
			console.log(uploadedFiles);

			// If no files were uploaded, respond with an error.
			if (uploadedFiles.length === 0) {
				return res.badRequest('No file was uploaded');
			}
			var file = uploadedFiles[0];
			var index = file.fd.lastIndexOf('\\');
			console.log(index);
			var filename = file.fd.substr(index);
			res.json({
				url: '/uploads/' + filename
			})

		});
	},
}