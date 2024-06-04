import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
          onPressed: (){
            Navigator.of(context).pushNamed('contact-form');
          },)
        ],
      ) ,
      body: ListView(),
    );
  }
}