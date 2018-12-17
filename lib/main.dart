import 'package:flutter/material.dart';

import './components.dart';

void main() => runApp(HomePage());

AppBar getAppBar(text) => 
  AppBar( 
    title: Text(text),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.playlist_play),
        tooltip: 'Air it',
        onPressed: (){},
      )
    ],
  );

Drawer getMenu(BuildContext context) => 
  Drawer(
    child: ListView(
      children: getMenuItens(context)
    )
  );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
          appBar: getAppBar('home'),
          drawer: getMenu(context),
          body: RefundCard()),
    );
  }
}

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: getAppBar('Form'),
        drawer: getMenu(context),
        body: RefundForm()),
    );
  }
}

const MENU_ITENS = [
  {
    'text': 'Início',
    'page': HomePage
  },
  {
    'text': 'Novo Registro' 
  },
  {
    'text': 'Configurações' 
  }
];

List<Widget> getMenuItens(BuildContext context) {
  List<Widget> menuItens = new List<Widget>();
  
  //header
  menuItens.add(DrawerHeader(
    child: Center(child: new Container(
      decoration: const BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: const AssetImage("assets/img/osf-logo.png"),
        ),
      ),
    )),
  ));
  
  //itens
  MENU_ITENS.forEach((item) =>
    menuItens.add(ListTile(
      title: Text(item['text']),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) { var f = item['page']; f(); }),
        );
      }
    ))
  );

  //version
  menuItens.add(Center(child: Text('Versão: 2.0.0')));

  return menuItens;
}

