import '/widgets/high/1sthigh/1sthigh.dart';
import '/widgets/high/2ndhigh/2ndhigh.dart';
import '/widgets/middle/7thgrade/7thgrade.dart';
import '/widgets/middle/8thgrade/8thgrade.dart';
import '/widgets/middle/9thgrade/9thgrade.dart';
import '/widgets/primary/1st/1st.dart';
import '/widgets/primary/2nd/2ndgrade.dart';
import '/widgets/primary/3rd/3rdgrade.dart';
import '/widgets/primary/4th/4thgrade.dart';
import '/widgets/primary/5th/5thgrade.dart';
import '/widgets/primary/6th/6thgrade.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LearningPage extends StatelessWidget {
  List<String> p_school = [
    '1st grade',
    '2nd grade',
    '3rd grade',
    '4th grade',
    '5th grade',
    '6th grade'
  ];
  List<String> m_school = [
    '7th grade',
    '8th grade',
    '9th grade',
  ];
  List<String> h_school = ['1st grade', '2nd grade', '3rd grade', 'Bac'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logo-no-background.png',
                width: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? 200
                    : 80,
                height: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? 150
                    : 80,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        focusColor: Colors.pink,
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                    onPressed: () {
                      // Add functionality for search
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Primary School',
                style: GoogleFonts.slackey(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.pink),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: MediaQuery.of(context).size.width >
                      MediaQuery.of(context).size.height
                  ? 6
                  : 3,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children: List.generate(6, (index) {
                return InkWell(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstGrade()),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondGrade()),
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdGrade()),
                      );
                    } else if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthGrade()),
                      );
                    } else if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthGrade()),
                      );
                    } else if (index == 5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SixthGrade()),
                      );
                    }
                  },
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffFFE259),
                            Color(0xffFFA751),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          p_school[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.karla(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 42, 42, 42)),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            // Repeat the same structure for Middle School, High School, and College
            ListTile(
              title: Text(
                'Middle School',
                style: GoogleFonts.slackey(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.pink),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: MediaQuery.of(context).size.width >
                      MediaQuery.of(context).size.height
                  ? 6
                  : 3,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children: List.generate(3, (index) {
                return InkWell(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SeventhGrade()),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EighthGrade()),
                      );
                    } else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NinethGrade()),
                      );
                    }
                  },
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff56CCF2),
                            Color(0xff2F80ED),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          m_school[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.karla(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            ListTile(
              title: Text(
                'High School',
                style: GoogleFonts.slackey(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.pink),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: MediaQuery.of(context).size.width >
                      MediaQuery.of(context).size.height
                  ? 6
                  : 3,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children: List.generate(4, (index) {
                return InkWell(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FirstGradeHigh()),
                      );
                    } else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondGradeHigh()),
                      );
                    } else if (index == 2) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Select an Option"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the first page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FirstGrade()),
                                    );
                                  },
                                  child: Text("First Option",
                                      style: TextStyle(color: Colors.blue)),
                                ),
                                SizedBox(
                                    height: 10), // Adjust spacing between links
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the second page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondGrade()),
                                    );
                                  },
                                  child: Text("Second Option",
                                      style: TextStyle(color: Colors.blue)),
                                ),
                                SizedBox(
                                    height: 10), // Adjust spacing between links
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to the third page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdGrade()),
                                    );
                                  },
                                  child: Text("Third Option",
                                      style: TextStyle(color: Colors.blue)),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (index == 3) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fourth Option"),
                            content: Text("You selected the fourth option."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffFF9A8B),
                            Color(0xffFF6A88),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          h_school[index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.karla(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
