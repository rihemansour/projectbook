import 'package:flutter/material.dart';
import '../../../../../chapter.dart';
import '../../../../chapter_widget.dart';
import '../../../../../exercice.dart';
import '../../../../../course.dart';

class LessonPage extends StatelessWidget {
  final List<Chapter> chapters = [
    Chapter(
      title: 'Chapter 1: Introduction to Python',
      content: 'Python is a powerful programming language...',
      sections: [
        Course(
          title: 'Basic Concepts',
          description: 'This course covers the basic concepts of Python...',
        ),
        Exercise(
          question:
              'Affectez les variables temps et distance par les valeurs 6.892 et 19.7. Calculez et affichez la valeur de la vitesse. Améliorez l’affichage en imposant un chiffre après le point décimal.',
          answer:
              'temps = 6.892\ndistance = 19.7\nvitesse = distance/temps\nprint("vitesse = {:.2f} m/s".format(vitesse))',
        ),
        // Add more sections if needed
      ],
    ),
    // Add more chapters as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var chapter in chapters) ChapterWidget(chapter: chapter),
            ],
          ),
        ),
      ),
    );
  }
}
