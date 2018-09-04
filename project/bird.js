var express = require('express');
var handlebars = require('express-handlebars');
var bodyParser = require('body-parser');

/***********************************************************************************
|                                   Initial Setup                                  |
************************************************************************************/

// initialize Express app
var app = express();

// create handlebars object
var hbs = handlebars.create({
    defaultLayout: 'main',
});

// set up handlebars view engine
app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

// establish port
app.set('port', process.env.PORT || 3000);

/***********************************************************************************
|                                    Middleware                                    |
************************************************************************************/

// show tests if test=1 in querystring
app.use(function(req, res, next) {
    res.locals.showTests = app.get('env') !== 'production' && req.query.test === '1';
    next();
});

// establish public directories
app.use(express.static(__dirname + '/public'));

// set home page header flag to true if on home page
app.use(function(req, res, next) {
    res.locals.isHome = req.path === '/';
    next();
});

/***********************************************************************************
|                                      Routes                                      |
************************************************************************************/

// route for home page
app.get('/', function(req, res) {
    res.render('home', {
        pageTestScript: '/qa/page-tests/test-home.js'
    });
});

// route for bird search page
app.get('/bird-search', function(req, res) {
    res.render('bird-search');
});

// route for contact page
app.get('/contact', function(req, res) {
    res.render('contact');
});

/***********************************************************************************
|                                  Error Handling                                  |
************************************************************************************/



/***********************************************************************************
|                               Running Application                                |
************************************************************************************/
app.listen(app.get('port'), function() {
    console.log('Express started on http://localhost:' + 
        app.get('port') + '; press Ctrl-C to terminate.');
});

module.exports = app;
if(!module.parent) {
    app.listen(app.get('port'), function() {
        console.log('Express started on http://localhost:' + 
        app.get('port') + '; press Ctrl-C to terminate.');
    });
}