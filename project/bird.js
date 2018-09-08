// Third Party Modules
const express = require("express");
const handlebars = require("express-handlebars");
const bodyParser = require("body-parser");

// Bringing in our routes
const home = require("./routes/home");
const search = require("./routes/search");

// Bringing in connection to MongoDB and models
const { mongoose } = require("./db/mongoose");
const { Bird } = require("./models/bird");

/*******************************************************************************
|                                   Initial Setup                              |
*******************************************************************************/

// Initializing our Express app
const app = express();

// Creating our Handlebars object
const hbs = handlebars.create({
  defaultLayout: "main"
});

// Setting up bodyParser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

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

// If the page the user is on needs an extended header, set the needsExtend to true.
app.use(function(req, res, next) {
  res.locals.needsExtend =
    req.path === "/home" ||
    req.path === "/search" ||
    req.path === "/home/" ||
    req.path === "/search/";
  next();
});

/*******************************************************************************
|                                      Routes                                  |
*******************************************************************************/

// Reroute '/' to '/home'
app.get("/", (req, res) => {
  res.redirect(302, "/home");
});

// Setting our routes to their respective router
app.use("/home", home);
app.use("/search", search);

/*******************************************************************************
|                                  Error Handling                              |
*******************************************************************************/

// // Handler for 404 errors
// app.use(function(req, res) {
//   res.status(404);
//   res.render("errors/404");
// });

// // Handler for 500 errors
// app.use(function(err, req, res, next) {
//   console.error(err.stack);
//   res.status(500);
//   res.render("errors/500");
// });
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
