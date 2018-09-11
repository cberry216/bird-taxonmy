// Required packages to bring in
const express = require("express");
const ssearch = require("smart-search");
const bird = require("../models/bird");
const router = express.Router();

// Simplifies code later on
const Bird = bird.Bird;

/*******************************************************************************
|                                      Routes                                  |
*******************************************************************************/

// This is the route for the main search page
router.get("/", (req, res) => {
  res.render("search/search");
});

// This is the route for the observation search page
router.get("/observation", (req, res) => {
  res.render("search/observation");
});

// This is the route for the name search page
router.get("/name", (req, res) => {
  res.render("search/name");
});

// This is the route for the location search page
router.get("/location", (req, res) => {
  res.render("search/location");
});

// This is the route for results that is redirected from '/process'
router.get("/results", (req, res) => {
  if (req.query.searchType === "name" && req.query.birdName) {
    // Search for birds with the given name using 'smart-search'
    // ? is this fast; I have to get all DB entries before searching them ?
    Bird.find((err, birds) => {
      if (err) console.log(err);
      if (birds)
        res.render("search/results", {
          name: true,
          birdData: ssearch(birds, [req.query.birdName], { name: true })
        });
    });
  } else if (req.query.searchType === "location" && req.query.location) {
    birdData = {
      location: true
    };
    res.render("search/results", { birdData });
  } else if (req.query.searchType === "observation") {
    options = {};
    for (var propName in req.query) {
      if (req.query.hasOwnProperty(propName)) {
        // if (propName == "backGreen") options.back = "green";
      }
    }
    birdData = {
      observation: true
    };
    res.render("search/results", { birdData });
  } else {
    res.status(401).render("errors/search");
  }
});

module.exports = router;
