module.exports = {
	show: function(req, res) {
		var user = req.session.user;
		var userId = user.id;
		Question.find().where({
			owner: userId
		}).then(function(questions) {
			var arr = new Array(),
				answers;
			for (var i = 0; i < questions.length; i++) {
				arr[i] = questions[i].id;
			};
			console.log('arr' + arr);
			Answer.find().where({
				owner: arr
			}).then(function(answers) {
				answers = answers;
				res.locals.questions = questions;
				res.locals.answers = answers;
				res.view('user/question');
			});



		});
	}
}