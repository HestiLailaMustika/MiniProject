import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Super, key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Profil'),
              backgroundColor: Colors.blue,
              elevation: 0,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.verified_user,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images (3).jpg'),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Hallo Cat',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                      size: 17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        'Tangerang, Banten',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            letterSpacing: 3,
                                            wordSpacing: 2),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]))
                  ]),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '+62 857 7889 2461',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Cat12345@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25.0),
                    child: Row(children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '16 oktober 2022',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                        ),
                      )
                    ]),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    margin:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Tangerang, Banten',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ])));
  }
}
