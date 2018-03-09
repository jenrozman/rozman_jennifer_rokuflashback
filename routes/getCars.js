var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/:id', (req, res) => { //orig had '/getCars', but its already looking for it in app.js
  connect.query('SELECT * FROM movies', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('home', {
        data : result
      });
    }
  });
});
//video
router.get('/video/:vid', (req, res) => { //orig had '/getCars', but its already looking for it in app.js
  connect.query('SELECT * FROM movies', (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('cars', {
        title: 'Mini Cars',
        message : "A Selection of Minis",
        carData : result
      });
    }
  });
});
module.exports = router;
