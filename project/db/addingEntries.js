db = connect("127.0.0.1:27017/birdTaxonomy_dev");

db.birds.remove({});

// db.birds.insertOne({
//   name: "",
//   length: 0,
//   wingspan: 0,
//   weight: 0,
//   description: {
//     summary: "",
//     voice: "",
//     color: [
//       { bodyPart: "BACK", style: "", colors: [] },
//       { bodyPart: "BELLY", style: "", colors: [] },
//       { bodyPart: "BILL", style: "", colors: [] },
//       { bodyPart: "BREAST", style: "", colors: [] },
//       { bodyPart: "HEAD", style: "", colors: [] },
//       { bodyPart: "SCAPULAR", style: "", colors: [] },
//       { bodyPart: "TAIL", style: "", colors: [] },
//       { bodyPart: "WINGS", style: "", colors: [] }
//     ]
//   },
//   location: [{ x: 0, y: 0 }],
//   region: [],
//   relatedBirds: []
// });

// Styles
// - None
// - STRIPED
// - DOTTED
// - MIXED
// - FADE
db.birds.insertOne({
  name: "COMMON LOON",
  length: 32,
  wingspan: 46,
  weight: 9,
  description: {
    summary:
      "Common locally; in most areas the most frequently seen species of loon. Nests on wooded lakes. Winters on open lakes, bays, and ocean. Often solitary, but forms loose flocks during migration and on wintering grounds. Dives for fish. A large, long-bodied, heavy-billed bird; larger and heavier than Red-throated Loon, with heavier bill. Juvenile and nonbreeding plumage identified by details of head and neck pattern.",
    voice:
      "Low melancholy yodeling or wailing cries such as rising 'hoooo-lii'.",
    color: [
      { bodyPart: "BACK", style: "", colors: [] },
      { bodyPart: "BELLY", style: "", colors: [] },
      { bodyPart: "BILL", style: "", colors: [] },
      { bodyPart: "BREAST", style: "", colors: [] },
      { bodyPart: "HEAD", style: "", colors: [] },
      { bodyPart: "SCAPULAR", style: "", colors: [] },
      { bodyPart: "TAIL", style: "", colors: [] },
      { bodyPart: "WINGS", style: "", colors: [] }
    ]
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "YELLOW-BILLED LOON",
  length: 35,
  wingspan: 49,
  weight: 11.8,
  description: {
    summary:
      "Rare. Nests on tundra ponds in Arctic Canada; a few winter records farther south in eastern North America, mostly on lakes. Habits similar to Common Loon. Larger than Common, with larger bill that is always pale at tip; nonbreeding and juvenile plumage paler overall. Best distinguished from Common by details of bill: culmen straight so bill appears upturned, and tip of bill entirely pale yellowish.",
    voice: "Similar to Common Loon, but lower.",
    color: [
      { bodyPart: "BACK", style: "", colors: [] },
      { bodyPart: "BELLY", style: "", colors: [] },
      { bodyPart: "BILL", style: "", colors: [] },
      { bodyPart: "BREAST", style: "", colors: [] },
      { bodyPart: "HEAD", style: "", colors: [] },
      { bodyPart: "SCAPULAR", style: "", colors: [] },
      { bodyPart: "TAIL", style: "", colors: [] },
      { bodyPart: "WINGS", style: "", colors: [] }
    ]
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "RED-THROATED LOON",
  length: 25,
  wingspan: 36,
  weight: 3.1,
  description: {
    summary:
      "Common locally along Atlantic coast and on eastern Great Lakes; uncommon to rare elsewhere in eastern North America. Nests on tundra ponds. Winters on open lakes, bays, and especially ocean. Usually solitary, but may gather in loose groups during nonbreeding season. Dives for fish. The smallest loon; relatively slender and small-billed. Slender bill upturned and usually raised above horizontal. Mostly white face and neck of nonbreeding plumage distinctive.",
    voice: "Quacking or gull-like wailing.",
    color: [
      { bodyPart: "BACK", style: "", colors: [] },
      { bodyPart: "BELLY", style: "", colors: [] },
      { bodyPart: "BILL", style: "", colors: [] },
      { bodyPart: "BREAST", style: "", colors: [] },
      { bodyPart: "HEAD", style: "", colors: [] },
      { bodyPart: "SCAPULAR", style: "", colors: [] },
      { bodyPart: "TAIL", style: "", colors: [] },
      { bodyPart: "WINGS", style: "", colors: [] }
    ]
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});

db.birds.insertOne({
  name: "PACIFIC LOON",
  length: 25,
  wingspan: 36,
  weight: 3.7,
  description: {
    summary:
      "Uncommon on tundra breeding grounds; rare visitor elsewhere in eastern North America. Habits similar to Common Loon. Smaller than Common Loon and stockier than Red-throated Loon, but best identified by details of head and neck pattern: pale grey nape with straight border on side of neck and little or no white around eye.",
    voice: "Croaking and relatively high, strident, yodeling sounds.",
    color: [
      { bodyPart: "BACK", style: "", colors: [] },
      { bodyPart: "BELLY", style: "", colors: [] },
      { bodyPart: "BILL", style: "", colors: [] },
      { bodyPart: "BREAST", style: "", colors: [] },
      { bodyPart: "HEAD", style: "", colors: [] },
      { bodyPart: "SCAPULAR", style: "", colors: [] },
      { bodyPart: "TAIL", style: "", colors: [] },
      { bodyPart: "WINGS", style: "", colors: [] }
    ]
  },
  location: [{ x: 0, y: 0 }],
  region: [],
  relatedBirds: []
});
