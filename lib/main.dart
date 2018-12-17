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

Drawer getMenu() => 
  Drawer(
    child: ListView(
      children: <Widget> [
        DrawerHeader(
          child: Center(child: Image.asset('assets/img/osf-logo.jpg')),
        ),
        ListTile(
          title:  Text('First Menu Item'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Second Menu Item'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title:  Text('About'),
          onTap: () {},
        ),
      ],
    )
  );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
          appBar: getAppBar('home'),
          drawer: getMenu(),
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
        body: RefundForm()),
    );
  }
}
