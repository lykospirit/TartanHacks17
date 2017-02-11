var TextLayer, aoaname, campuslife1, campuslife2, campuslife3, campuslife4, campuslife5, campuslife6, campuslifeX0, campuslifeY0, campuslifeborder, campuslifeh, campuslifepage, campuslifew, campustrue, codlabel, codtrue, currenthousinglabel, currenthousinglabels, currenthousingtrue, dininglabels, diningname, futurehousinglabel, housingname, mailboxname, main_height, main_width, mealplanlabels, mealplanname, mealplantrue, packagedescriptions, printingname, printquotalabels, printquotatrue, quicklinks_background, smclabels, smctrue, textsize, ttolabel, ttotrue;

TextLayer = require('TextLayer').TextLayer;

main_width = Screen.width;

main_height = Screen.height;

quicklinks_background = new BackgroundLayer({
  x: Align.centerX,
  y: Align.centerY,
  image: "images/CMU-Tartan-Digital.png"
});


/* Initialize numbers */

textsize = 45;

campuslifeborder = 15;

campuslifew = 0.9 * main_width;

campuslifeh = 0.8 * main_height;

campuslifeX0 = (main_width - campuslifew) / 2;

campuslifeY0 = (main_height - campuslifeh) / 2;


/* Create main page */

campuslifepage = new PageComponent({
  x: Screen.x,
  y: Screen.y,
  width: main_width,
  height: main_height,
  clip: false,
  contentInset: {
    right: 65
  }
});

campuslifepage.draggable.enabled = false;


/* HOUSING AND DINING PLANS */

campuslife1 = new Layer({
  parent: campuslifepage.content,
  x: campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

housingname = new TextLayer({
  parent: campuslife1,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "Housing Assignment",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

currenthousinglabel = new TextLayer({
  parent: campuslife1,
  x: housingname.x,
  y: 0.03 * campuslifeh + 150,
  text: 'Current Semester - Spring 2017',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans-bold"
});

currenthousinglabels = new TextLayer({
  parent: campuslife1,
  x: housingname.x,
  y: currenthousinglabel.y + currenthousinglabel.height + 20,
  text: 'Location\nRoom Type\nSemester Cost\nRoommate',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: 300,
  fontFamily: "OpenSans-bold"
});

currenthousingtrue = new TextLayer({
  parent: campuslife1,
  x: campuslife1.width / 2,
  y: currenthousinglabel.y + currenthousinglabel.height + 20,
  text: 'Resnik House\nStandard Double\n$3000.00\nSubra Suresh (ssures)',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: 300,
  fontFamily: "OpenSans"
});

futurehousinglabel = new TextLayer({
  parent: campuslife1,
  x: currenthousinglabels.x,
  y: currenthousinglabels.y + currenthousinglabels.height,
  text: 'Future Semesters',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans-bold"
});

campustrue = new TextLayer({
  parent: campuslife1,
  x: currenthousinglabels.x,
  y: futurehousinglabel.y + futurehousinglabel.height + 20,
  text: 'You are not assigned to a campus residence hall in\nthe next semester.',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  fontFamily: "OpenSans"
});


/* MEAL PLAN ASSIGNMENT */

campuslife2 = new Layer({
  parent: campuslifepage.content,
  x: 3 * campuslifeborder + campuslifew + campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

mealplanname = new TextLayer({
  parent: campuslife2,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "Meal Plan Assignment",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

mealplanlabels = new TextLayer({
  parent: campuslife2,
  x: mealplanname.x,
  y: 0.03 * campuslifeh + 150,
  text: 'Red 9 Flex Dollars\n\nDinextra\n\nDInextra Bonus\n\n9-Red 22 Meals\n\nRed Guest Passes',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: (campuslife2.height - mealplanname.height) * 0.15,
  fontFamily: "OpenSans-bold"
});

mealplantrue = new TextLayer({
  parent: campuslife2,
  x: campuslife2.width / 2,
  y: 0.03 * campuslifeh + 150,
  text: '$900.00\n\n$0.00\n\n$0.00\n\n22 meals\n\n2 meals',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  fontFamily: "OpenSans"
});


/* DINING OPTIONS */

campuslife3 = new Layer({
  parent: campuslifepage.content,
  x: 5 * campuslifeborder + 2 * campuslifew + campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

diningname = new TextLayer({
  parent: campuslife3,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "Dining Options",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

dininglabels = new TextLayer({
  parent: campuslife3,
  x: diningname.x,
  y: 0.03 * campuslifeh + 150,
  text: '<On Campus Dining Options and Operating Hours!!>',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: (campuslife3.height - diningname.height) * 0.15,
  fontFamily: "OpenSans-bold"
});


/* MAILBOX AND PACKAGES */

campuslife4 = new Layer({
  parent: campuslifepage.content,
  x: 7 * campuslifeborder + 3 * campuslifew + campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

mailboxname = new TextLayer({
  parent: campuslife4,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "SMC Mailbox & Combination",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

smclabels = new TextLayer({
  parent: campuslife4,
  x: mailboxname.x,
  y: 0.03 * campuslifeh + 150,
  text: 'SMC Mailbox Number\n\nCombination\n\nNumber of Packages\n\n\nPackage Descriptions',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: 620,
  fontFamily: "OpenSans-bold"
});

smctrue = new TextLayer({
  parent: campuslife4,
  x: campuslife4.width / 2,
  y: 0.03 * campuslifeh + 150,
  text: '0000\n\n00-01-02\n\n0',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  fontFamily: "OpenSans"
});

packagedescriptions = new TextLayer({
  parent: campuslife4,
  x: smclabels.x,
  y: smclabels.x + smclabels.height,
  text: 'You have no packages.',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  fontFamily: "OpenSans"
});


/* PRINTING AND PLAIDCASH */

campuslife5 = new Layer({
  parent: campuslifepage.content,
  x: 9 * campuslifeborder + 4 * campuslifew + campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

printingname = new TextLayer({
  parent: campuslife5,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "Printing and Plaid Cash",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

printquotalabels = new TextLayer({
  parent: campuslife5,
  x: printingname.x,
  y: 0.03 * campuslifeh + 150,
  text: 'Print Quota\n(Current Semester)\n\nPlaid Cash',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  height: 620,
  fontFamily: "OpenSans-bold"
});

printquotatrue = new TextLayer({
  parent: campuslife5,
  x: campuslife4.width / 2,
  y: 0.03 * campuslifeh + 150,
  text: '$40.00\n\n\n$0.00',
  color: "#000",
  textAlign: "left",
  fontSize: textsize,
  width: campuslifew - 2 * campuslifeborder,
  fontFamily: "OpenSans"
});


/* TURN TARTAN OVERNIGHT */

campuslife6 = new Layer({
  parent: campuslifepage.content,
  x: 11 * campuslifeborder + 5 * campuslifew + campuslifeX0,
  y: campuslifeY0,
  width: campuslifew,
  height: campuslifeh,
  backgroundColor: "#FFF",
  borderRadius: campuslifeborder
});

aoaname = new TextLayer({
  parent: campuslife6,
  x: 0.8 * (campuslifeX0 + campuslifeborder),
  y: 0.03 * campuslifeh,
  text: "Admissions Overnight Ambassador",
  color: "#000",
  textAlign: "left",
  fontSize: 80,
  width: campuslifew - 2 * campuslifeborder,
  height: 100,
  fontFamily: "OpenSans-bold"
});

ttolabel = new TextLayer({
  parent: campuslife6,
  x: housingname.x,
  y: 0.03 * campuslifeh + 250,
  text: 'You are registered for:\n\nTurn Tartan Overnight',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans-bold"
});

ttotrue = new TextLayer({
  parent: campuslife6,
  x: housingname.x,
  y: ttolabel.y + 195,
  text: 'February 12 - February 13',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans"
});

codlabel = new TextLayer({
  parent: campuslife6,
  x: housingname.x,
  y: ttotrue.y + 125,
  text: 'Celebration of Diversity',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans-bold"
});

codtrue = new TextLayer({
  parent: campuslife6,
  x: housingname.x,
  y: codlabel.y + 80,
  text: 'You are not registered for any events.',
  color: "#000",
  textAlign: "left",
  fontSize: 45,
  width: campuslifew - 2 * campuslifeborder,
  height: textsize * 1.5,
  fontFamily: "OpenSans"
});
