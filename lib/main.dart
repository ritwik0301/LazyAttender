import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  static const String _title = 'LazyAttender';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("LazyAttender"))),
        body: const ContinueAsWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Creating Register As Widget
class ContinueAsWidget extends StatefulWidget {
  const ContinueAsWidget({Key? key}) : super(key: key);

  @override
  State<ContinueAsWidget> createState() => _ContinueAsWidgetState();
}

// Creating Register As Widget State
class _ContinueAsWidgetState extends State<ContinueAsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              const SizedBox(height: 100),
              SizedBox(
                height: 70,
                child: ElevatedButton(
                  child: const Text('Continue as a Student'),
                  onPressed: () {
                    // Route to Student Login
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StudentLoginWidget()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 70),
              SizedBox(
                height: 70,
                child: ElevatedButton(
                  child: const Text('Continue as a Teacher'),
                  onPressed: () {
                    // Route to Teacher Login
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TeacherLoginWidget()),
                    );
                  },
                ),
              )
            ])));
  }
}

// Creating Student Login Widget
class StudentLoginWidget extends StatefulWidget {
  const StudentLoginWidget({Key? key}) : super(key: key);

  @override
  State<StudentLoginWidget> createState() => _StudentLoginWidgetState();
}

// Creating Student Login Widget State
class _StudentLoginWidgetState extends State<StudentLoginWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Student Login"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                // Container(
                //     alignment: Alignment.center,
                //     padding: const EdgeInsets.all(10),
                //     child: const Text(
                //       'LazyAttender',
                //       style: TextStyle(
                //           color: Colors.blue,
                //           fontWeight: FontWeight.w500,
                //           fontSize: 30),
                //     )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Student ID',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 20),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // forgot password screen (To be Created)
                      },
                      child: const Text(
                        'Forgot Password?',
                      ),
                    )),
                Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const StudentDashboardWidget()),
                        );
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text('Do not have an account?'),
                    TextButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        // Direct to Student Registration Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const StudentRegistrationWidget()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}

// Creating Teacher Login Widget
class TeacherLoginWidget extends StatefulWidget {
  const TeacherLoginWidget({Key? key}) : super(key: key);

  @override
  State<TeacherLoginWidget> createState() => _TeacherLoginWidgetState();
}

// Creating Login Widget State
class _TeacherLoginWidgetState extends State<TeacherLoginWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Faculty Login"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                // Container(
                //     alignment: Alignment.center,
                //     padding: const EdgeInsets.all(10),
                //     child: const Text(
                //       'LazyAttender',
                //       style: TextStyle(
                //           color: Colors.blue,
                //           fontWeight: FontWeight.w500,
                //           fontSize: 30),
                //     )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Employee ID',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 20),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        // forgot password screen (To be Created)
                      },
                      child: const Text(
                        'Forgot Password?',
                      ),
                    )),
                Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TeacherDashboardWidget()),
                        );
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text('Do not have an account?'),
                    TextButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        // Direct to Teacher Registration
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TeacherRegistrationWidget()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}

// Creating Student Registration Widget
class StudentRegistrationWidget extends StatefulWidget {
  const StudentRegistrationWidget({Key? key}) : super(key: key);

  @override
  State<StudentRegistrationWidget> createState() =>
      _StudentRegistrationWidgetState();
}

// Creating Student Registraton Widget State
class _StudentRegistrationWidgetState extends State<StudentRegistrationWidget> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController enrollmentNumberController = TextEditingController();
  TextEditingController urnController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Student Registration',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: enrollmentNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enrollment Number',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: urnController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'University Roll Number',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        // Route to Student Login Page
                        Navigator.pop(context);
                      },
                    )),
              ],
            )));
  }
}

// Creating Teacher Registration Page
class TeacherRegistrationWidget extends StatefulWidget {
  const TeacherRegistrationWidget({Key? key}) : super(key: key);

  @override
  State<TeacherRegistrationWidget> createState() =>
      _TeacherRegistrationWidgetState();
}

//Creating Teacher Registration Widget State
class _TeacherRegistrationWidgetState extends State<TeacherRegistrationWidget> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController enrollmentNumberController = TextEditingController();
  TextEditingController urnController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(25),
                    child: const Text(
                      'Faculty Registration',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: enrollmentNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Employee ID',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: urnController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Department',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        // Route to Teacher Login Page
                        Navigator.pop(context);
                      },
                    )),
              ],
            )));
  }
}

class StudentDashboardWidget extends StatefulWidget {
  const StudentDashboardWidget({Key? key}) : super(key: key);

  @override
  State<StudentDashboardWidget> createState() => _StudentDashboardWidgetState();
}

class _StudentDashboardWidgetState extends State<StudentDashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Student Dashboard"),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 70,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Scan QR Code")),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: const Text(
                      'Attendance Details: ',
                      style: TextStyle(fontSize: 30),
                    )),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Semester :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'val',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Overall Attendance :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'val',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Monthly Attendance :',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'val',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StudentDetailsWidget()),
                      );
                    },
                    child: const Text(
                      'View Detailed Report',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            )));
  }
}

class StudentDetailsWidget extends StatefulWidget {
  const StudentDetailsWidget({Key? key}) : super(key: key);

  @override
  State<StudentDetailsWidget> createState() => _StudentDetailsWidgetState();
}

class _StudentDetailsWidgetState extends State<StudentDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Detailed Report"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Student Details',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      '',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Wrap(
                  spacing: 100.0, // padding
                  runSpacing: 30.0, // margin
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Overall Attendance',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Subject1',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Subject2',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Subject3',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Subject4',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Subject5',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}

// Creating Teacher Dashboard Page
class TeacherDashboardWidget extends StatefulWidget {
  const TeacherDashboardWidget({Key? key}) : super(key: key);

  @override
  State<TeacherDashboardWidget> createState() => _TeacherDashboardWidgetState();
}

//Creating Teacher Dashboard Widget State
class _TeacherDashboardWidgetState extends State<TeacherDashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Faculty Dashboard"),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddAttendance()),
                        );
                      },
                      child: const Text("Add Attendance")),
                ),
                const SizedBox(height: 50),
                SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SubjectDetailWidget()),
                          );
                        },
                        child: const Text("View Subject Details")))
              ],
            )));
  }
}

// Creating the Subject Detail Widget
class SubjectDetailWidget extends StatefulWidget {
  const SubjectDetailWidget({Key? key}) : super(key: key);

  @override
  State<SubjectDetailWidget> createState() => _SubjectDetailWidgetState();
}

// Creating the Subject Detail Widget State
class _SubjectDetailWidgetState extends State<SubjectDetailWidget> {
  @override
  Widget build(BuildContext context) {
    // To be modified with the actual Subjects from the database
    List<String> subjectList = <String>[
      'Subject_Name_1',
      'Subject_Name_2',
      'Subject_Name_3',
      'Subject_Name_4'
    ];
    String dropdownValue = subjectList.first;
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          " Subject Details",
          style: TextStyle(fontSize: 25),
        )),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 30, 0),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: const Text("Select Subject",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      style: const TextStyle(color: Color(0xff009d05)),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: subjectList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                Container(
                    // To be modified to a scrollable output
                    padding: const EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const SizedBox(
                        height: 190, child: Text("The output goes here"))),
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Download as .csv file"))),
                Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Download as .xlsx file"))),
                Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Back"),
                    ))
              ],
            )));
  }
}

// Creating Add Attendance Details widget
class AddAttendance extends StatefulWidget {
  const AddAttendance({Key? key}) : super(key: key);

  @override
  State<AddAttendance> createState() => _AddAttendanceState();
}

// Creating Add Attendance Details Widget State
class _AddAttendanceState extends State<AddAttendance> {
  @override
  Widget build(BuildContext context) {
    List<String> list = <String>[
      'Subject_Name_1',
      'Subject_Name_2',
      'Subject_Name_3',
      'Subject_Name_4'
    ];
    List<String> timeList = <String>[
      '30 Seconds',
      '1 Minute',
      '5 Minutes',
      '15 Minutes'
    ];
    String subject = list.first;
    String timeValue = timeList.first;
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          " Attendance Details",
          style: TextStyle(fontSize: 25),
        )),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 30, 0),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: const Text("Select Subject",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: subject,
                      icon: const Icon(Icons.arrow_downward),
                      style: const TextStyle(color: Color(0xff009d05)),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          subject = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: const Text("Set Time Window",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 20),
                    alignment: Alignment.centerLeft,
                    child: DropdownButton<String>(
                      value: timeValue,
                      icon: const Icon(Icons.arrow_downward),
                      style: const TextStyle(color: Color(0xff009d05)),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          timeValue = value!;
                        });
                      },
                      items: timeList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                const SizedBox(height: 80),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QRDisplay()),
                          );
                        },
                        child: const Text("Generate QR")))
              ],
            )));
  }
}

// Creating QR Display Page
class QRDisplay extends StatefulWidget {
  const QRDisplay({Key? key}) : super(key: key);

  @override
  State<QRDisplay> createState() => _QRDisplayState();
}

// Creating QR Dispaly State
class _QRDisplayState extends State<QRDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Show QR"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: const SizedBox(
                    height: 80,
                    child: Text('A beautiful QR Code'),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text("Done")))
              ],
            )));
  }
}
