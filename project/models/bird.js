const mongoose = require("mongoose");

const BirdSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  length: {
    type: Number,
    required: true
  },
  wingspan: {
    type: Number,
    required: true
  },
  weight: {
    type: Number,
    required: true
  },
  imagePath: {
    type: String
  },
  description: {
    summary: String,
    voice: String,
    color: [
      {
        bodyPart: {
          type: String,
          enum: [
            "SCAPULAR",
            "BREAST",
            "BELLY",
            "BILL",
            "HEAD",
            "WING",
            "BACK",
            "TAIL"
          ],
          required: true
        },
        style: {
          type: String,
          enum: ["NONE", "STRIPED", "DOTTED", "MIXED", "FADE", "IRIDESCENT"],
          default: "NONE"
        },
        colors: [
          {
            color: {
              type: String,
              required: true,
              enum: [
                "NONE",
                "GREEN",
                "BLUE",
                "TAN",
                "RED",
                "PINK",
                "ORANGE",
                "WHITE",
                "BROWN",
                "BLACK",
                "GREY",
                "YELLOW",
                "RUFOUS",
                "OLIVE",
                "PURPLE",
                "BUFF"
              ]
            }
          }
        ]
      }
    ]
  },
  location: [
    {
      x: Number,
      y: Number
    }
  ],
  region: [
    {
      name: {
        type: String,
        enum: [
          "PRIBILOFS",
          "ALEUTIANS",
          "GREENLAND",
          "ARCTIC",
          "NEWFOUNDLAND",
          "TAIGA",
          "QUEEN CHARLOTTE ISLANDS",
          "PACIFIC NORTHWEST",
          "CALIFORNIA",
          "CHANNEL ISLANDS",
          "ROCKY MOUNTAINS",
          "GREAT BASIN",
          "SOUTHWEST",
          "GREAT PLAINS",
          "MEXICAN",
          "NORTHEAST",
          "SOUTHEAST",
          "FLORIDA",
          "FLORIDA KEYS"
        ]
      }
    }
  ],
  relatedBirds: [
    {
      bird: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Bird"
      }
    }
  ]
});

const Bird = mongoose.model("Bird", BirdSchema);

module.exports = { Bird };
