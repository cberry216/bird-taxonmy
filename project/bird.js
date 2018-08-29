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

// establish public directories
app.use(express.static(__dirname + '/public'));

/***********************************************************************************
|                                      Routes                                      |
************************************************************************************/

app.get('/', function(req, res) {
    res.render('home');
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