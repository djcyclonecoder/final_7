import 'package:flutter/material.dart';
import '../api.dart';
import 'Main_Page.dart';

/*
class Group3Widget extends StatefulWidget {
  // const Main_Page({super.key});

  // ***************************************************8
  final GetAllStudentsApi api = GetAllStudentsApi();

  @override
  _Group3WidgetState createState() => _Group3WidgetState();
}

// state class
class _Group3WidgetState extends State<Group3Widget> {
  // *******************************************
  List students = [];
  bool _dbLoaded = false;

  void initState() {
    super.initState();

    widget.api.getStudents().then((data) {
      setState(() {
        students = data;
        _dbLoaded = true;
      });
    });
  }
  // ********************************************

  TextEditingController inputText = TextEditingController();
  */

class EditCourse extends StatefulWidget {
  // const EditCourse({super.key});
  final String id,
      courseInstructor,
      courseCredits,
      courseID,
      courseName,
      dateEntered;

  final GetAllCoursesApi api = GetAllCoursesApi();

  EditCourse(this.id, this.courseInstructor, this.courseCredits, this.courseID,
      this.courseName, this.dateEntered);

  //_EditCourseState createState() => _EditCourseState(
  //   id, courseInstructor, courseCredits, courseID, courseName, dateEntered);

  @override
  State<EditCourse> createState() => _EditCourseState(
      id, courseInstructor, courseCredits, courseID, courseName, dateEntered);
}

class _EditCourseState extends State<EditCourse> {
  final String id,
      courseInstructor,
      courseCredits,
      courseID,
      courseName,
      dateEntered;

  _EditCourseState(this.id, this.courseInstructor, this.courseCredits,
      this.courseID, this.courseName, this.dateEntered);

  void _changeCourseInstructor(courseName, courseInstructor) {
    setState(() {
      widget.api.editCourseByCourseName(courseName, courseInstructor);
    });
  }

  TextEditingController courseInstructorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.courseName),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () => {
                                null,
                                //_changeCourseInstructor(widget.courseInstructor,
                                //    courseInstructorController.text),
                              },
                          child: Text('Delete Course')),
                      TextFormField(
                        controller: courseInstructorController,
                      ),
                      ElevatedButton(
                          onPressed: () => {
                                // null,
                                _changeCourseInstructor(widget.courseInstructor,
                                    courseInstructorController.text),
                              },
                          child: Text('Change Student Fname')),
                    ],
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.home),
            onPressed: () => {
                  Navigator.pop(context),
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_Page())),
                }));

/*
  @override
  Widget build(BuildContext context) {

      return Column(children: [
      Padding(padding: EdgeInsets.fromLTRB(350.0, 0.0, 50.0, 0.0)),
      //Text(
      //  _textString,
      //  style: TextStyle(fontSize: 30),
      //),

      const Text(
        'Course Name:    Instructor:      Credits:',
        style: TextStyle(fontSize: 24),
      ),

      _dbLoaded
          ? Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(5.0),
                  children: [
                    ...courses
                        .map<Widget>(
                          (course) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: TextButton(
                              onPressed: () => {
                                Navigator.pop(context),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditCourse(
                                            course['_id'],
                                            course['courseInstructor'],
                                            course['courseCredits'],
                                            course['courseID'],
                                            course['courseName'],
                                            course['dateEntered']))),
                              },
                              child: ListTile(
                                //leading: CircleAvatar(
                                //  radius: 30,
                                //  child: Text(course['courseName']),
                                //),

                                title: Text(
                                  (course['courseName'] +
                                      "    " +
                                      course['courseInstructor'] +
                                      "    " +
                                      course['courseCredits']),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ]),
            )
          : Column(
              children: <Widget>[
                Text(
                  "Database Loading",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                CircularProgressIndicator(),
              ],
            )

                ]);
  }          
                
                
  */

    //);
  }
}


/*
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('We are here!' + widget.courseID),
    );
  }

  */
