import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<Map<String, String>> lista = const [
    {
      'nome': 'Pietro',
      'telefone': '(11)9 9874-5656',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Maitê',
      'telefone': '(11)9 9632-8578',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg'
    },
    {
      'nome': 'Hortência',
      'telefone': '(11)9 9652-3356',
      'avatar':
          'https://cdn.pixabay.com/photo/2022/09/13/19/54/doll-7452766_960_720.png'
    },
  ];

  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          var contato = lista[i];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contato['avatar']!),
            ),
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: const SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              )
            ),
          );
        },
      ),
    );
  }
}
