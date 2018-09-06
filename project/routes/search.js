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

module.exports = router;
