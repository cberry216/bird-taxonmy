const express = require("express");
const router = express.Router();

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
  var birdData = {};
  if (req.query.searchType === "name" && req.query.birdName) {
    birdData = {
      type: "name",
      name: req.query.birdName
    };
    res.render("search/results", { birdData });
  } else if (req.query.searchType === "location" && req.query.location) {
    birdData = {
      type: "location"
    };
    res.render("search/results", { birdData });
  } else if (req.query.searchType === "observation" && req.query.colors) {
    birdData = {
      type: "observation"
    };
    res.render("search/results", { birdData });
  } else {
    res.status(401).render("errors/search");
  }
});

module.exports = router;
