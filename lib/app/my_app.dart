import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:agenda_crud/app/view/contact_form.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';

  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     routes: {
      HOME:(context) => const ContactList(),
      CONTACT_FORM:(context) => const ContactForm(),
     },
    );
  }
}
