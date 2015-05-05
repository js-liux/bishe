module.exports = {
	bower: function(req, res) {
		var user = req.session.user;
		var userId = user.id;
		console.log("questionController bower " + userId);
		Question.find().where({
			owner: userId
		}).then(function(questions) {
			for (var i = 0; i < questions.length; i++) {
				Answer.find().where({
					owner: questions[i].id
				}).then(function(answers) {
					questions.answers = answers;
					//res.locals.answers = answers;
					res.locals.questions = questions;
					res.view('user/question');

				});

			};

		});

		Product.find({
			owner: 1
		}).then(function(data) {
			var result = {
				user: user,
				products: data
			};
			res.view('homepage', result);
		});
	}
}