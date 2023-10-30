import '/learningpage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  _launchURL() async {
    const url = 'https://www.linkedin.com/in/rihem-mansour-822264216/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendEmail() async {
    final String email = emailController.text;
    final String message = messageController.text;
    final Email send_email = Email(
      body: message,
      subject: 'Subject of email',
      recipients: ['rihemmansour26@gmail.com'],
      attachmentPaths: [email],
      isHTML: false,
    );

    await FlutterEmailSender.send(send_email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF020024),
                Color.fromARGB(255, 3, 0, 149),
                Color(0xFF4100B6),
                Color.fromARGB(255, 6, 2, 94),
                Color.fromARGB(255, 3, 0, 92),
              ],
              stops: [0.1, 0.3, 0.5, 0.7, 0.9],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'TechTunes!',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3a86ff),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width +
                              MediaQuery.of(context).size.height) /
                          4, // Adjust the width as needed
                      height: 200, // Adjust the height as needed
                      child:
                          Image.asset('assets/images/logo-no-background.png'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "At TechTunes, we believe in the power of education. That's why we're proud to offer free courses to Tunisian students, investing in their academic journeys and nurturing their minds for a brighter future. \n Join us in our mission to support Tunisian students in their studies, because at TechTunes, we invest in minds for a better tomorrow!",
                      style: GoogleFonts.karla(
                        fontSize: 24,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LearningPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: Text(
                    'Start Learning',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Prepare for the Future',
                    style: GoogleFonts.slackey(
                      fontSize: 32,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/online.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Learn Anywhere',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/learn.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Interactive Lessons',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/teacher.jpg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Expert Instructors',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Your email',
                        hintStyle: TextStyle(color: Colors.pink),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                      onTap: () {
                        emailController.selection = TextSelection.fromPosition(
                          TextPosition(offset: emailController.text.length),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: messageController,
                      decoration: InputDecoration(
                        prefixIconColor: Colors.white,
                        hintText: 'Your message',
                        hintStyle: TextStyle(color: Colors.pink),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink),
                        ),
                      ),
                      maxLines: 5,
                      onTap: () {
                        messageController.selection =
                            TextSelection.fromPosition(
                          TextPosition(offset: messageController.text.length),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _sendEmail,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Send',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  '© 2023 TechTunes. All rights reserved.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
