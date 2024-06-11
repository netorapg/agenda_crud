import 'package:sqflite/sqflite.dart';
final createTable = '''
  CREATE TABLE contact(
    id INT NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,telefone CHAR(16) NOT NULL
    ,email VARCHAR(150) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL
    )
''';


final insert1='''
INSERT INTO contact(nome, telefone, email. url_avatar)
VALUES('Pietro','(11)9 9874-5656','pietro@email.com','https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png')
''';
final insert2='''
INSERT INTO contact(nome, telefone, email. url_avatar)
VALUES('Maitê','(11)9 9632-8578','maite@email.com','https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg')
''';
final insert3='''
INSERT INTO contact(nome, telefone, email. url_avatar)
VALUES('Hortência','(11)9 9652-3356','hortencia@email.com','https://cdn.pixabay.com/photo/2022/09/13/19/54/doll-7452766_960_720.png')
''';