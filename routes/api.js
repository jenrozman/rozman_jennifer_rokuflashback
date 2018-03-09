var express = require('express');
var connection = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();

//middleware goes here, after request, before response

//parse request, make sure we can convert incoming data into something Express can use
router.use(bodyParser.urlencoded({ extended : false}));
router.use(bodyParser.json());

router.use((req, res, next) => {
var now = new Date();//show when the request was made, and what kind it was
var timestamp = now.toLocaleString('en-us', {
		hour: "numeric",
		minute: "numeric",
		hour12: true
	});

	console.log(`you made a ${req.method} call!`);
	console.log(`you made the call @ ${timestamp}`);
	//console.log(req);
	next();//run next method - get, post, put, delete etc. if you dont have the next(); it will die, it tells it to keep going
});


router.get('/:id', (req, res) => {//again. /api/:id is wrong, already looking there
	// do a request for json data here
	let currentCar = req.params.dataID;
	console.log(req.params.id);
	console.log('hit api route with params');

	connection.query(`SELECT * FROM mainmodel WHERE model="${req.params.id}"`, (err, result, fields) => {
		if (err) {
			throw err; console.log(err);
		} else {
			res.json({
				mainheading : result[0].modelName, //tells you what row was affected
				carData : result
			});
		}
	});
});

router.delete('/api/:id', (req, res) => {
	console.log('hit the delete route', req.params.id);

	connection.query(`DELETE from mainmodel WHERE model="${req.params.id}"`, (err, result) => {
		if (err) {
			throw err; console.log(err);
		} else {
			res.json(result); // send back whatever this is
		}
	});
});

router.post('/:id', (req, res) => { //post-creating record, put -editing record
	console.log(`hit the post route`);
	connect.query(`INSERT into mainmodel (id, model, modelName, pricing, modelDetails, imgPath) VALUES (NULL, "${req.body.model}", "${req.body.modelName}", "${req.body.pricing}", "${req.body.modelDetails}", "${req.body.imgPath}");`, (err, data) => {
		if (err) {
			throw(err);
		} else {
			res.json(data);
		}
	})
});


module.exports = router;
