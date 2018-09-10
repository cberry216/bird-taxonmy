db = connect("127.0.0.1:27017/birdTaxonomy_dev");

db.birds.remove({});

// db.birds.insertOne({
//   name: "",
//   birdType: "",
//   length: 0,
//   wingspan: 0,
//   weight: 0,
//   imagePath: "",
//   gender: "",
//   description: {
//     summary: "",
//     voice: "",
//     color: {
//       nonbreeding: [
//         { bodyPart: "BACK", style: "", colors: [""] },
//         { bodyPart: "BELLY", style: "", colors: [""] },
//         { bodyPart: "BILL", style: "", colors: [""] },
//         { bodyPart: "BREAST", style: "", colors: [""] },
//         { bodyPart: "HEAD", style: "", colors: [""] },
//         { bodyPart: "NAPE", style: "", colors: [""] },
//         { bodyPart: "NECK", style: "", colors: [""] },
//         { bodyPart: "TAIL", style: "", colors: [""] },
//         { bodyPart: "WINGS", style: "", colors: [""] }
//       ],
//       breeding: [
//         { bodyPart: "BACK", style: "", colors: [""] },
//         { bodyPart: "BELLY", style: "", colors: [""] },
//         { bodyPart: "BILL", style: "", colors: [""] },
//         { bodyPart: "BREAST", style: "", colors: [""] },
//         { bodyPart: "HEAD", style: "", colors: [""] },
//         { bodyPart: "NAPE", style: "", colors: [""] },
//         { bodyPart: "NECK", style: "", colors: [""] },
//         { bodyPart: "TAIL", style: "", colors: [""] },
//         { bodyPart: "WINGS", style: "", colors: [""] }
//       ]
//     }
//   },
//   location: [{ x: 0, y: 0 }],
//   region: [],
//   relatedBirds: []
// });

// Styles
// - None
// - STRIPED
// - SPOTTED
// - MIXED
// - FADE
db.birds.insertOne({
  name: "COMMON LOON",
  birdType: "LOON",
  length: 32,
  wingspan: 46,
  weight: 9,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Common locally; in most areas the most frequently seen species of loon. Nests on wooded lakes. Winters on open lakes, bays, and ocean. Often solitary, but forms loose flocks during migration and on wintering grounds. Dives for fish. A large, long-bodied, heavy-billed bird; larger and heavier than Red-throated Loon, with heavier bill. Juvenile and nonbreeding plumage identified by details of head and neck pattern.",
    voice:
      "Low melancholy yodeling or wailing cries such as rising 'hoooo-lii'.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "MIXED", colors: ["WHITE", "GREY"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "FADE", colors: ["BROWN", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["BROWN", "WHITE"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NAPE", style: "STRIPED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NECK", style: "IRIDESCENT", colors: ["GREEN"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["BLACK", "WHITE"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "YELLOW-BILLED LOON",
  birdType: "LOON",
  length: 35,
  wingspan: 49,
  weight: 11.8,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Rare. Nests on tundra ponds in Arctic Canada; a few winter records farther south in eastern North America, mostly on lakes. Habits similar to Common Loon. Larger than Common, with larger bill that is always pale at tip; nonbreeding and juvenile plumage paler overall. Best distinguished from Common by details of bill: culmen straight so bill appears upturned, and tip of bill entirely pale yellowish.",
    voice: "Similar to Common Loon, but lower.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["WHITE", "BROWN"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["WHITE", "BROWN"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NAPE", style: "STRIPED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NECK", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["BLACK", "WHITE"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "RED-THROATED LOON",
  birdType: "LOON",
  length: 25,
  wingspan: 36,
  weight: 3.1,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Common locally along Atlantic coast and on eastern Great Lakes; uncommon to rare elsewhere in eastern North America. Nests on tundra ponds. Winters on open lakes, bays, and especially ocean. Usually solitary, but may gather in loose groups during nonbreeding season. Dives for fish. The smallest loon; relatively slender and small-billed. Slender bill upturned and usually raised above horizontal. Mostly white face and neck of nonbreeding plumage distinctive.",
    voice: "Quacking or gull-like wailing.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "FADE", colors: ["GREY", "WHITE"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["GREY", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["GREY"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["BLACK", "WHITE"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN", "BLACK"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BREAST", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["GREY"] },
        { bodyPart: "NAPE", style: "STRIPED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NECK", style: "NONE", colors: ["RUFOUS", "RED"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN", "BLACK"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BROWN"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "PACIFIC LOON",
  birdType: "LOON",
  length: 25,
  wingspan: 36,
  weight: 3.7,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Uncommon on tundra breeding grounds; rare visitor elsewhere in eastern North America. Habits similar to Common Loon. Smaller than Common Loon and stockier than Red-throated Loon, but best identified by details of head and neck pattern: pale grey nape with straight border on side of neck and little or no white around eye.",
    voice: "Croaking and relatively high, strident, yodeling sounds.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["WHITE", "GREY"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["GREY", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["GREY", "BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BLACK", "GREY"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "SPOTTED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BREAST", style: "STRIPED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "HEAD", style: "FADE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NAPE", style: "MIXED", colors: ["WHITE", "BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "WINGS", style: "SPOTTED", colors: ["BLACK", "WHITE"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "WESTERN GREBE",
  birdType: "GREBE",
  length: 25,
  wingspan: 24,
  weight: 3.3,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Common locally. Nests on lakes with marshy vegetation. Winters on open lakes, bays, and ocean. Rather gregarious; often found in large groups. Dives for fish. Our largest grebe, with long graceful neck and long straight bill. Clean white neck and narrow dark strip down back of neck distinctive",
    voice: "Most common call a high, creaking, two-part 'kreed-kreet'.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BLACK", "BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN", "BLACK"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BLACK", "WHITE"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BLACK", "BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW", "TAN"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN", "BLACK"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BLACK", "WHITE"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "CLARK'S GREBE",
  birdType: "GREBE",
  length: 25,
  wingspan: 24,
  weight: 3.1,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Uncommon; usually found with Western Grebe, but in smaller numbers. Habitat and habits similar to Western. Appearance similar to Western, but with more white and less black in plumage, particularly on the face so that eye is often surrounded by white. Best distinguished by brighter yellow bill and by voice.",
    voice: "High, creaking, one=part, 'kreeeed'.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "MIXED", colors: ["GREY", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW", "ORANGE"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "MIXED", colors: ["GREY", "WHITE"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["GREY", "WHITE", "BLACK"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "MIXED", colors: ["GREY", "WHITE"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["YELLOW", "ORANGE"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "TAIL", style: "MIXED", colors: ["GREY", "WHITE"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["GREY", "WHITE", "BLACK"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "PIED-BILLED GREBE",
  birdType: "GREBE",
  length: 13,
  wingspan: 16,
  weight: 1,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Uncommon but widespread; in many inland areas the most frequently seen species of grebe. Found on ponds, bays, and other open water, usually close to aquatic vegetation. Usually solitary or in small groups. Dives for aquatic insects, crayfish, and small fish. Stout bill and overall brownish color without contrasting pattern unique.",
    voice:
      "Male song a rhythmic series of gulping and cooing notes. Also a drawn out nasal chatter.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BROWN", "WHITE", "TAN"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NECK", style: "MIXED", colors: ["TAN", "BROWN"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN", "WHITE"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BROWN"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "STRIPED", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "NECK", style: "NONE", colors: ["BROWN", "TAN"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BROWN", "WHITE"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BROWN"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "LEAST GREBE",
  birdType: "GREBE",
  length: 9.5,
  wingspan: 11,
  weight: 0.25,
  imagePath: "",
  gender: "BOTH",
  description: {
    summary:
      "Uncommon within limited range. Found on weedy or marshy ponds, never far from vegetation. Usually in pairs year-round that often battle with other pairs over territorial boundaries. Dives for aquatic insects. By far our smallest grebe; dark grey color, small bill, and yellow eye distinctive.",
    voice:
      "Relatively high, rapid, nasal buzz and ringing nasal 'teen' distinctive.",
    color: {
      nonbreeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BROWN", "BLACK"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["TAN", "GREY"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["TAN"] },
        { bodyPart: "NECK", style: "NONE", colors: ["BROWN"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "WINGS", style: "", colors: ["BROWN", "WHITE"] }
      ],
      breeding: [
        { bodyPart: "BACK", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BELLY", style: "NONE", colors: ["WHITE"] },
        { bodyPart: "BILL", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "BREAST", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "HEAD", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NAPE", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "NECK", style: "NONE", colors: ["BLACK"] },
        { bodyPart: "TAIL", style: "NONE", colors: ["BLACK", "WHITE"] },
        { bodyPart: "WINGS", style: "NONE", colors: ["BLACK", "WHITE"] }
      ]
    }
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});
