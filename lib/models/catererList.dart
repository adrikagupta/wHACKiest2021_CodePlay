import 'package:book_my_hall/models/caterer.dart';

// List<String> images = [
//   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsLzEwo9d3a_UczVlwiikvzM_RJobRytHjzg&usqp=CAU",
//   "https://image.wedmegood.com/resized/400X/uploads/member/17678/1489013780_1439470702_Silver_spoon_caterer_017.jpg",
//   "https://cdn0.weddingwire.in/emp/fotos/8/5/5/3/r10_2x_168553-banquet-18-bangalore_15_168553-159794858387838.jpg",
//   "https://www.captainjoe.in/css/images/wedding-Ceremony-Lunch.jpg",
//   "https://previews.123rf.com/images/kadmy/kadmy1512/kadmy151200284/50038117-catering-service-restaurant-table-with-food-at-event-shallow-depth-of-view.jpg",
//   "https://5.imimg.com/data5/UV/IA/MY-6942930/wedding-catering-services-500x500.jpg",
//   "https://media.weddingz.in/images/d14c75e916f512deccc614284a5a7788/5-pure-vegetarian-caterers-to-check-out-for-your-mumbai-wedding.jpg",
//   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ6HKTVrHbhuWQHBqX0yCPw8o_g_6-Kebw0XmKAuPhsx9TFIU2U4N3Lpd35MpPmWK5vaA&usqp=CAU",
//   "https://previews.123rf.com/images/kadmy/kadmy1512/kadmy151200284/50038117-catering-service-restaurant-table-with-food-at-event-shallow-depth-of-view.jpg",

// ];
List<String> images = [
    "assets/images/brown_sugar.webp",
    "assets/images/bth.webp",
    "assets/images/evergreen.webp",
    "assets/images/fossetta_caterer.webp",
    "assets/images/karachi.webp",
    "assets/images/partywalaz.webp",
    "assets/images/quisine.webp",
    "assets/images/aura_caterer.webp",
    "assets/images/tongue_twister.webp",
];

List<String> names = [
  "Banquet 18",
  "Savoury Sea Shell",
  "Foodfab",
  "Sharon Foods",
  "Empire",
  "Mallika Caterers",
  "Rkm Catering Services",
  "Korayee's Kitchen",
  "Vasudev Adiga's"
];
List<String> addresses = [
  "JP Nagar",
  "Bannerghatta Road",
  "Bommanahalli",
  "RT Nagar",
  "Frazer Town",
  "CV Raman Nagar",
  "Basveswara Nagar",
  "Hennur",
  "Bannerghatta Road"
];
List<String> cities = [
  "Bangalore",
  "Kolkata",
  "Delhi",
  "Mumbai"
];
List<double> pricePerPlate = [
  400,
  900,
  600,
  450,
  1200,
  500,
  230,
  550,
  250
];
List<String> taglines = [
  "Great tastes at affordable prices",
  "For making parties better",
  "Taste excellence",
  "Service and food at its best",
  "The commitment to good food",
  "Food and hospitality",
  "Making occasions more elegant",
  "Celebrating food and special days",
  "Because Every occasion needs food"
];
// List<String> cuisine1 = [
//   "Mughlai",
//   "Italian",
//   "Continental",
//   "Chinese",
//   "South Indian",
//   "North Indian",
//   "Lebanese"
// ];
// List<String> cuisine2 = [
//   "Italian",
//   "Continental",
//   "Chinese",
//   "South Indian",
//   "North Indian",
//   "Thai",
//   "Burmese"
// ];
// List<int> numberOfStaffs = [];
List<Caterer> caterers = [
  Caterer(name:names[0],photo:images[0],address:addresses[0],city:cities[0],pricePerPlate:pricePerPlate[0], stars: 4.2,tagline: taglines[0]),
  Caterer(name:names[1],photo:images[1],address:addresses[1],city:cities[0],pricePerPlate:pricePerPlate[1], stars: 4.1,tagline: taglines[1]),
  Caterer(name:names[2],photo:images[2],address:addresses[2],city:cities[0],pricePerPlate:pricePerPlate[2], stars: 3.9,tagline: taglines[2]),
  Caterer(name:names[3],photo:images[3],address:addresses[3],city:cities[0],pricePerPlate:pricePerPlate[3], stars: 4.0,tagline: taglines[3]),
  Caterer(name:names[4],photo:images[4],address:addresses[4],city:cities[0],pricePerPlate:pricePerPlate[4], stars: 4.2,tagline: taglines[4]),
  Caterer(name:names[5],photo:images[5],address:addresses[5],city:cities[0],pricePerPlate:pricePerPlate[5], stars: 3.7,tagline: taglines[5]),
  Caterer(name:names[6],photo:images[6],address:addresses[6],city:cities[0],pricePerPlate:pricePerPlate[6], stars: 3.6,tagline: taglines[6]),
  Caterer(name:names[7],photo:images[7],address:addresses[7],city:cities[0],pricePerPlate:pricePerPlate[7], stars: 4.5,tagline: taglines[7]),
  Caterer(name:names[8],photo:images[8],address:addresses[8],city:cities[0],pricePerPlate:pricePerPlate[8], stars: 4.6,tagline: taglines[8]),

  Caterer(name:names[0],photo:images[0],address:addresses[0],city:cities[1],pricePerPlate:pricePerPlate[0], stars: 4.2,tagline: taglines[0]),
  Caterer(name:names[1],photo:images[1],address:addresses[1],city:cities[1],pricePerPlate:pricePerPlate[1], stars: 3.5,tagline: taglines[1]),
  Caterer(name:names[2],photo:images[2],address:addresses[2],city:cities[1],pricePerPlate:pricePerPlate[2], stars: 3.4,tagline: taglines[2]),
  Caterer(name:names[3],photo:images[3],address:addresses[3],city:cities[1],pricePerPlate:pricePerPlate[3], stars: 4.2,tagline: taglines[3]),

  Caterer(name:names[4],photo:images[4],address:addresses[4],city:cities[2],pricePerPlate:pricePerPlate[4], stars: 5.0,tagline: taglines[4]),
  Caterer(name:names[5],photo:images[5],address:addresses[5],city:cities[2],pricePerPlate:pricePerPlate[5], stars: 3.2,tagline: taglines[5]),
  Caterer(name:names[6],photo:images[6],address:addresses[6],city:cities[2],pricePerPlate:pricePerPlate[6], stars: 4.5,tagline: taglines[6]),
  Caterer(name:names[7],photo:images[7],address:addresses[7],city:cities[2],pricePerPlate:pricePerPlate[7], stars: 4.1,tagline: taglines[7]),
  Caterer(name:names[8],photo:images[8],address:addresses[8],city:cities[2],pricePerPlate:pricePerPlate[8], stars: 4.0,tagline: taglines[8]),

  Caterer(name:names[2],photo:images[2],address:addresses[2],city:cities[3],pricePerPlate:pricePerPlate[2], stars: 4.5,tagline: taglines[2]),
  Caterer(name:names[3],photo:images[3],address:addresses[3],city:cities[3],pricePerPlate:pricePerPlate[3], stars: 4.5,tagline: taglines[3]),
  Caterer(name:names[4],photo:images[4],address:addresses[4],city:cities[3],pricePerPlate:pricePerPlate[4], stars: 4.5,tagline: taglines[4]),
  Caterer(name:names[5],photo:images[5],address:addresses[5],city:cities[3],pricePerPlate:pricePerPlate[5], stars: 4.5,tagline: taglines[5]),
  Caterer(name:names[6],photo:images[6],address:addresses[6],city:cities[3],pricePerPlate:pricePerPlate[6], stars: 4.5,tagline: taglines[6]),
  
];