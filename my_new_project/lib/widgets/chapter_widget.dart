import 'package:flutter/material.dart';
import '../chapter.dart';
import 'course_widget.dart';
import 'exercice_widget.dart';
import '/course.dart';
import '/exercice.dart';

class ChapterWidget extends StatelessWidget {
  final Chapter chapter;

  const ChapterWidget({required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            chapter.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            chapter.content,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          for (var section in chapter.sections)
            section is Course
                ? CourseWidget(course: section as Course)
                : ExerciseWidget(exercise: section as Exercise),
        ],
      ),
    );
  }
}
