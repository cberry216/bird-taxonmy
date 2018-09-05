// Third Party Modules
var express = require("express");
var handlebars = require("express-handlebars");
var bodyParser = require("body-parser");

// Bringing in our routes
var home = require("./routes/home");
var contact = require("./routes/contact");
var birdSearch = require("./routes/birdSearch");

/*******************************************************************************
|                                   Initial Setup                              |
*******************************************************************************/

// Initializing our Express app
var app = express();

// Creating our Handlebars object
var hbs = handlebars.create({
  defaultLayout: "main"
});

// Setting up the app to use Handlebars as the templating engine
app.engine("handlebars", hbs.engine);
app.set("view engine", "handlebars");

// Setting the port to the process port or 3000
app.set("port", process.env.PORT || 3000);

/*******************************************************************************
|                                    Middleware                                |
*******************************************************************************/

// Show tests if test is equal to 1 in the querystring
app.use(function(req, res, next) {
  res.locals.showTests =
    app.get("env") !== "production" && req.query.test === "1";
  next();
});

// Giving access to our 'public' directory
app.use(express.static(__dirname + "/public"));

// If the user is on the home page set 'isHome' to true, false otherwise
app.use(function(req, res, next) {
  res.locals.isHome = req.path === "/";
  next();
});

/*******************************************************************************
|                                      Routes                                  |
*******************************************************************************/

// Setting our routes to their respective router
app.use("/", home);
app.use("/contact", contact);
app.use("/bird-search", birdSearch);

/*******************************************************************************
|                                  Error Handling                              |
*******************************************************************************/

// Handler for 404 errors
app.use(function(req, res) {
  res.status(404);
  res.render("errors/404");
});

// Handler for 500 errors
app.use(function(err, req, res, next) {
  console.error(err.stack);
  res.status(500);
  res.render("errors/500");
});
/*******************************************************************************
|                               Running Application                            |
*******************************************************************************/

// Starting the application listening on the given port
app.listen(app.get("port"), function() {
  console.log(
    "Express started on http://localhost:" +
      app.get("port") +
      "; press Ctrl-C to terminate."
  );
});
