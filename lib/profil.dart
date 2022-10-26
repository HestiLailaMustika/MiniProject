import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              //title: Text('contoh tabbar'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'profile',
                  ),
                  Tab(
                    icon: Icon(Icons.book),
                    text: 'book mark',
                  )
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              Center(
                child: Text('Tab profil'),
              ),
              Center(
                child: Text('Tab book mark'),
              ),
            ]),
          )),
    );
  }
}
