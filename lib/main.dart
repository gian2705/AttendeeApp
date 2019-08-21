import 'package:event_attendance/attendee/attendeeListPage.dart';
import 'package:event_attendance/authentication/signup/signUpPage.dart';
import 'package:event_attendance/events/SingleEventPage.dart';
import 'package:event_attendance/events/eventListPage.dart';
import 'package:flutter/material.dart';

import 'events/eventAttendee/eventAttendee.dart';
import 'landing/landingPage.dart';
import 'authentication/login/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        'list-Atendees': (context) => EventAttendee(),
        '/landing': (context) => LandingPage(),
        EventsListPage.routeName: (context) => EventsListPage(),
        AttendeeListPage.routeName: (context) => AttendeeListPage(),
        SingleEventPage.routeName: (context) => SingleEventPage()
      },
    );
  }
}

