import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../../constants.dart';

class ExploreCourseCard extends StatelessWidget {
  const ExploreCourseCard({Key? key, required this.course}) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41.0),
        child: Container(
          height: 120.0,
          width: 280.0,
          decoration: BoxDecoration(gradient: course.background),
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardSubtitleStyle,
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        course.courseTitle,
                        style: kCardTitleStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('asset/illustrations/${course.illustration}',
                        fit: BoxFit.cover, height: 100.0)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
