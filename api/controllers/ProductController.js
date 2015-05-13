var dirname = require('path').resolve(__dirname, 'E://study//biye//bishe//assets//images//uploads');

module.exports = {

	/**
	 * 根据产品ID 输出产品的信息
	 * @param {Object} req
	 * @param {Object} res
	 */
	detail: function(req, res) {
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
	/**
	 * 文件上传
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	upload: function(req, res) {
		req.file('file').upload({
			// don't allow the total upload size to exceed ~10MB
			maxBytes: 10000000,
			dirname: dirname
		}, function whenDone(err, uploadedFiles) {
			if (err) {
				return res.negotiate(err);
			}
			console.log(uploadedFiles[0].filename);

			// If no files were uploaded, respond with an error.
			if (uploadedFiles.length === 0) {
				return res.badRequest('No file was uploaded');
			}
			var file = uploadedFiles[0];
			var index = file.fd.lastIndexOf('\\');
			console.log(index);
			var filename = file.fd.substr(index + 2);
			console.log('fileName' + fileName);

			res.json({
				url: '/uploads/' + filename
			})

		});
	},

	/**
	 *	商品分类显示
	 * @param  {[type]} req [description]
	 * @param  {[type]} res [description]
	 * @return {[type]}     [description]
	 */
	productList: function(req, res) {
		console.log("productList");
		AllProduct.find().where({
			ownerCategory: [3, 4, 5, 6, 7]
		}).then(function(productList) {
			console.log("productList" + productList);
			var wear = new Array(),
				home = new Array(),
				sport = new Array(),
				tour = new Array(),
				entertainment = new Array();
			for (var i = 0; i < productList.length; i++) {
				console.log("productList" + productList[i].ownerCategory);
				switch (productList[i].ownerCategory) {
					case 3:
						wear[wear.length] = productList[i];
						break;
					case 4:
						home[home.length] = productList[i];
						break;
					case 5:
						sport[sport.length] = productList[i];
						break;
					case 6:
						tour[tour.length] = productList[i];
						break;
					case 7:
						entertainment[entertainment.length] = productList[i];
						break;
					default:
						break;
				}
			};
			res.locals.sessionUser = req.session.user;
			res.locals.wears = wear;
			res.locals.homes = home;
			res.locals.sports = sport;
			res.locals.tours = tour;
			res.locals.entertainments = entertainment;
			res.view("allProducts");
		});
	},
	/**
	 * [shareProduct description]
	 * @param  {[type]} res[description]
	 * @param  {[type]} req [description]
	 * @return {[type]}     [description]
	 * todo:获取用户ID
	 */
	shareProduct: function(req, res) {
		var productTitle = req.body.name;
		var productContent = req.body.content;
		var userId = req.session.user.id;
		res.locals.sessionUser = req.session.user;
		var fileName;
		req.file('file').upload({
			// don't allow the total upload size to exceed ~10MB
			maxBytes: 10000000,
			dirname: dirname
		}, function whenDone(err, uploadedFiles) {
			if (err) {
				return res.negotiate(err);
			}
			console.log(uploadedFiles[0].filename);

			// If no files were uploaded, respond with an error.
			if (uploadedFiles.length === 0) {
				return res.badRequest('No file was uploaded');
			}
			var file = uploadedFiles[0];
			var index = file.fd.lastIndexOf('\\');
			console.log("fd" + file.fd);
			fileName = file.fd.substr(index + 2) + "";
			console.log(fileName);
			console.log("fileName" + fileName);
			var product = {
				name: productTitle,
				imgUrl: fileName,
				content: productContent,
				owner: userId
			};
			AllProduct.create(product).then(function(_product) {
				console.log("_product" + _product);
				if (_product) { //如果已创建该用户
					return res.view('index');
					/*return res.json({
					message: uploadedFiles[0].length + ' file(s) uploaded successfully!'
				});*/
				}
				//创建用户失败，显示重新登录
				/*var loginErrMessage = "请重新登录";
			res.view('index', loginErrMessage);*/
			});
		});


	},
	myProduct: function(req, res) {
		console.log("myProduct");
		var user = req.session.user;
		res.locals.sessionUser = user;
		var userId = user.id;
		AllProduct.find().where({
			owner: userId
		}).then(function(_product) {
			res.locals.products = _product;
			res.view('user/shareProduct');
		});
	}
}