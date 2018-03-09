var express = require('express');
var router = express.Router();
var config = require('../config');



/* GET home page. */
router.get('/', function(req, res) {
  res.render(login, {
     title: 'Flashback Login',
     mainpage : true, //should evaluate where you are, and pick which to render/show
  });
});

module.exports = router;
