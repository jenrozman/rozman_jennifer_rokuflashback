var express = require('express');
var router = express.Router();
var config = require('../config');
var connect = require('../utils/sqlConnect');
//check to see what the defaut user profile is
//depending on whose here change what you see
//var toRender = (config.kidsmode) ? 'main_kids' : 'home'; //ternary statement - look up MDN ternary ?-if/else, if true main_kids, if not main homepage


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render("home", {
     title: 'Flashback Homepage',
     message : 'Want to relive your youth through your favourite tv show, song or movie? Rokus Flashback has all of your favourites in one easy collection, no more searching around for that perfect moment to share with your family',
     message2 : 'FAQs',
     footer : '2018 Roku Inc. All rights reserved. Flashback is property of ROKU, Inc.',


  });
});

router.get('/main_parents', function(req, res, next){
  res.render("main_parents", {
    logo : '/RokuLogo.png'
  }

  )
});

router.get('/main_kids', function(req, res, next){
  res.render("main_kids", {
    footer : '2018 Roku Inc. All rights reserved. Flashback is property of ROKU, Inc.'
  }

  )
})
router.get('/video', function(req, res, next){
  connect.query(`SELECT movies_trailer FROM tbl_movies WHERE vidSource="${req.params.vid}"`, (err,result) =>{
    if (err) {
        console.log(err);
    }else{console.log(result[0])};

  res.render("video", {
    data: result[0];
  });
});
};
module.exports = router;
