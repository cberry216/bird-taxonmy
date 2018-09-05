const express = require("express");
const router = express.Router();

// '/bird-search' will be routed through here
router.get("/", (req, res) => {
  res.render("bird-search");
});

module.exports = router;
