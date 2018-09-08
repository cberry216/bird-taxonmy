const express = require("express");
const router = express.Router();

/*******************************************************************************
|                                      Routes                                  |
*******************************************************************************/

// This is the route for the main homepage
router.get("/", (req, res) => {
  res.render("home/home");
});

// This is the route for the about page
router.get("/about", (req, res) => {
  res.render("home/about");
});

// This is the route for the contact page
router.get("/contact", (req, res) => {
  res.render("home/contact");
});

module.exports = router;
