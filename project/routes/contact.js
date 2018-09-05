const express = require("express");
const router = express.Router();

// '/contact' will be routed through here
router.get("/", (req, res) => {
  res.render("contact");
});

module.exports = router;
