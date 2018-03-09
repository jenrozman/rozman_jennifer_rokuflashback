var express = require('express');
var router = express.Router();
var config = require('../config');

//check to see what the defaut user profile is
//depending on whose here change what you see
var toRender = (config.kidsmode) ? 'main_kids' : 'home'; //ternary statement - look up MDN ternary ?-if/else, if true main_kids, if not main homepage


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
     title: 'Flashback Homepage',
     message : 'Want to relive your youth through your favourite tv show, song or movie? Rokus Flashback has all of your favourites in one easy collection, no more searching around for that perfect moment to share with your family',
     message2 : 'FAQs',
     footer : '2018 Roku Inc. All rights reserved. Flashback is property of ROKU, Inc.',
     mainpage : true, //should evaluate where you are, and pick which to render/show
     kidsmode : config.kidsmode

  });
});

module.exports = router;
