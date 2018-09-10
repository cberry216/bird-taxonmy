const mongoose = require("mongoose");

const BirdSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  birdType: {
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
  gender: {
    type: String,
    enum: ["MALE", "FEMALE", "BOTH"],
    default: "BOTH"
  },
  nonbreeding: {
    type: Boolean
  },
  description: {
    summary: String,
    voice: String,
    color: {
      nonbreeding: [
        {
          bodyPart: {
            type: String,
            enum: [
              "BREAST",
              "BELLY",
              "BILL",
              "HEAD",
              "NECK",
              "WING",
              "BACK",
              "TAIL"
            ],
            required: true
          },
          style: {
            type: String,
            enum: ["NONE", "STRIPED", "SPOTTED", "MIXED", "FADE", "IRIDESCENT"],
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
                  "PURPLE"
                ]
              }
            }
          ]
        }
      ],
      breeding: [
        {
          bodyPart: {
            type: String,
            enum: [
              "BREAST",
              "BELLY",
              "BILL",
              "HEAD",
              "NAPE",
              "NECK",
              "WING",
              "BACK",
              "TAIL"
            ],
            required: true
          },
          style: {
            type: String,
            enum: ["NONE", "STRIPED", "SPOTTED", "MIXED", "FADE", "IRIDESCENT"],
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
    }
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
