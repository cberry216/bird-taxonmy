const express = require("express");
const router = express.Router();

// '/' will be routed through here
router.get("/", (req, res) => {
  res.render("home");
});

module.exports = router;
