class Hall {
  String photo, location, size, phNo, city, name,tagline;
  int cost, numberOfGuests;
  bool available;
  Hall(
      {String p,
      String l,
      String s,
      String ph,
      int c,
      int n,
      bool a,
      String ct,
      String tag,
      String nm}) {
    photo = p;
    location = l;
    size = s;
    phNo = ph;
    cost = c;
    tagline = tag;
    numberOfGuests = n;
    available = a;
    city = ct;
    name = nm;
  }
}

List<String> names = [
  "The Beginning",
  "The Pergola",
  "Chamara Vajra",
  "The Groves",
  "Area 83",
  "Miraya Greens",
  "The Secret Grove",
  "Tamara",
  "Valura",
  "MoonGate",
  "The Peacock Grove",
  "Club Cabana"
];
List<String> taglines = [
  "Celebrations done right",
  "Moments made perfect",
  "Beyond your expectations",
  "Adding to your happiness",
  "More than you expected",

];
// String link1 =
//     "https://media.weddingz.in/images/20200428162606/white-petals-palace-ground-bangalore-1-400x267.jpg";
// String link2 =
//     "https://image.wedmegood.com/resized/800X/uploads/member/480002/1544677163_1544525345_20171230_174135.jpg";
// String link3 =
//     "https://image.wedmegood.com/resized/500X/uploads/member/777593/1573558365_Screenshot_5.png";
List<String> hallImages = [
  "assets/images/hall_3.jpg",
  "assets/images/hall_4.jpg",
  "assets/images/hall_2.jpg",
  "assets/images/hall_5.jpg",
  "assets/images/hall_6.jpg",
  "assets/images/hall_7.jpg",
  "assets/images/hall_8.jpg",
  "assets/images/hall_9.jpg",
  "assets/images/hall_10.jpg",
  "assets/images/hall_2.jpg",
  "assets/images/hall_3.jpg",
];
String location1 = "Boyalahalli";
String location2 = "Devanahalli";
String location3 = "J P Nagar";
List<Hall> halls = [
  Hall(
      nm: names[0],
      p: hallImages[0],
      l: location1,
      ct: "Bangalore",
      s: "3400x2300",
      ph: "123456789",
      c: 10000,
      n: 50,
      tag: taglines[0],
      a: true),
  Hall(
      nm: names[1],
      p: hallImages[1],
      l: location2,
      s: "5400x4300",
      ct: "Bangalore",
      ph: "123536789",
      c: 20000,
      tag: taglines[1],
      n: 60,
      a: true),
  Hall(
      nm: names[2],
      p: hallImages[2],
      l: location3,
      s: "6600x2000",
      ct: "Bangalore",
      tag: taglines[2],
      ph: "123346373",
      c: 30000,
      n: 65,
      a: false),
  Hall(
      nm: names[3],
      p: hallImages[4],
      l: location1,
      s: "3400x2300",
      ct: "Kolkata",
      ph: "123456789",
      tag: taglines[3],
      c: 10000,
      n: 50,
      a: true),
  Hall(
      nm: names[11],
      p: hallImages[5],
      l: location2,
      s: "5400x4300",
      ct: "Kolkata",
      tag: taglines[4],
      ph: "123536789",
      c: 20000,
      n: 60,
      a: true),
  Hall(
      nm: names[4],
      p: hallImages[6],
      l: location3,
      s: "6600x2000",
      ct: "Kolkata",
      tag: taglines[1],
      ph: "123346373",
      c: 30000,
      n: 65,
      a: false),
  Hall(
      nm: names[5],
      p: hallImages[7],
      l: location1,
      tag: taglines[0],
      s: "3400x2300",
      ct: "Mumbai",
      ph: "123456789",
      c: 10000,
      n: 50,
      a: true),
  Hall(
      nm: names[6],
      p:  hallImages[8],
      l: location2,
      ct: "Mumbai",
      s: "5400x4300",
      tag: taglines[2],
      ph: "123536789",
      c: 20000,
      n: 60,
      a: true),
  Hall(
      nm: names[7],
      p:  hallImages[9],
      l: location3,
      tag: taglines[3],
      s: "6600x2000",
      ct: "Mumbai",
      ph: "123346373",
      c: 30000,
      n: 65,
      a: false),
  Hall(
      nm: names[8],
      p: hallImages[10],
      l: location1,
      ct: "Delhi",
      s: "3400x2300",
      ph: "123456789",
      tag: taglines[4],
      c: 10000,
      n: 50,
      a: true),
  Hall(
      nm: names[9],
      p: hallImages[2],
      l: location2,
      s: "5400x4300",
      tag: taglines[0],
      ct: "Delhi",
      ph: "123536789",
      c: 20000,
      n: 60,
      a: true),
  Hall(
      nm: names[9],
      p: hallImages[3],
      l: location3,
      s: "6600x2000",
      ph: "123346373",
      ct: "Delhi",
      tag: taglines[1],
      c: 30000,
      n: 65,
      a: false),
];
