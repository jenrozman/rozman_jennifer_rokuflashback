var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');


/* GET home page. */
router.get('/', (req, res) => {
  res.render(toRender, {
     title: 'Flashback Homepage',
     message : "Roku: Flashback",
     mainpage : true, //should evaluate where you are, and pick which to render/show
     kidsmode : config.kidsmode
  });
});

module.exports = router;
