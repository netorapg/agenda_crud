import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:agenda_crud/app/view/contatct_form.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
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
      '/':(context) => ContactList(),
      'contact-form':(context) => ContactForm(),
     },
    );
  }
}
