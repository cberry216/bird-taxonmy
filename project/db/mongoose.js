// Import the mongoose module
const mongoose = require("mongoose");

// Connect to localhost database
mongoose
  .connect(
    "mongodb://127.0.0.1:27017/birdTaxonomy_dev",
    { useNewUrlParser: true }
  )
  .then(() => console.log("Connected to MongoDB"))
  .catch(err => console.log(err));

module.exports = { mongoose };
