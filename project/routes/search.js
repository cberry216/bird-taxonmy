// Required packages to bring in
const express = require("express");
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
    // Search for birds with the given name
    // TODO: Replace this with node-suggestive-search
    Bird.findOne({ name: req.query.birdName.toUpperCase() }, (err, birds) => {
      // If there is an error, redirect to 500 error page
      if (err) res.render("errors/500");
      // If more than 0 birds are returned, render results page with bird data
      if (birds) res.render("search/results", { name: true, birdData: birds });
      // If no birds are returned, render results with null bird data
      else res.render("search/results", { birdData: null });
    });
  } else if (req.query.searchType === "location" && req.query.location) {
    birdData = {
      location: true
    };
    res.render("search/results", { birdData });
  } else if (req.query.searchType === "observation" && req.query.colors) {
    birdData = {
      observation: true
    };
    res.render("search/results", { birdData });
  } else {
    res.status(401).render("errors/search");
  }
});

module.exports = router;
