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

// initialize Express app
var app = express();

// create handlebars object
var hbs = handlebars.create({
  defaultLayout: "main"
});

// set up handlebars view engine
app.engine("handlebars", hbs.engine);
app.set("view engine", "handlebars");

// establish port
app.set("port", process.env.PORT || 3000);

/*******************************************************************************
|                                    Middleware                                |
*******************************************************************************/

// show tests if test=1 in querystring
app.use(function(req, res, next) {
  res.locals.showTests =
    app.get("env") !== "production" && req.query.test === "1";
  next();
});

// establish public directories
app.use(express.static(__dirname + "/public"));

// set home page header flag to true if on home page
app.use(function(req, res, next) {
  res.locals.isHome = req.path === "/";
  next();
});

/*******************************************************************************
|                                      Routes                                  |
*******************************************************************************/

app.use("/", home);
app.use("/contact", contact);
app.use("/bird-search", birdSearch);

/*******************************************************************************
|                                  Error Handling                              |
*******************************************************************************/

// route custom 404 page
app.use(function(req, res) {
  res.status(404);
  res.render("errors/404");
});

// route custom 500 page
app.use(function(err, req, res, next) {
  console.error(err.stack);
  res.status(500);
  res.render("errors/500");
});
/*******************************************************************************
|                               Running Application                            |
*******************************************************************************/

app.listen(app.get("port"), function() {
  console.log(
    "Express started on http://localhost:" +
      app.get("port") +
      "; press Ctrl-C to terminate."
  );
});
