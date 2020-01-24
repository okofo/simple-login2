import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0XFF29D091),
          currentIndex: _bottomNavIndex,
          onTap: (int index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
          items: [
            new BottomNavigationBarItem(
                title: Text('Home'), icon: Icon(Icons.home)),
            new BottomNavigationBarItem(
                title: Text('notifications'), icon: Icon(Icons.notifications)),
            new BottomNavigationBarItem(
                title: Text('message'), icon: Icon(Icons.message)),
            new BottomNavigationBarItem(
              title: Text('Location'),
              icon: Icon(Icons.my_location),
            )
          ]),
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.blueAccent),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      'Explore',
                      style: TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: new Container(
                          height: 110.0,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Colors.pink[300]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              Text(
                                'Motor',
                                style: new TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        height: 110.0,
                        child: new Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.5),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF2BD993),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 7.0),
                                        child: Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text('Classified',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFFFC7B4D),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 7.0),
                                          child: Icon(
                                            Icons.beenhere,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text('Service',
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: new Container(
                          height: 110.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFF53CEDB),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 7.0),
                                          child: Icon(
                                            Icons.account_balance,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text('Properties',
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Color(0xFFF1B069),
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 7.0),
                                          child: Icon(
                                            Icons.art_track,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text('Jobs',
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        'Popular Trends',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    new Expanded(
                      child: Text(
                        'view all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF2BD993)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/firtp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('alejandro luengo',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/lastp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              'Achitecture buildings',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/secp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Artur Casino',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        'Popular Trends',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    new Expanded(
                      child: Text(
                        'view all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF2BD993)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/firtp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('alejandro luengo',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/lastp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              'Achitecture buildings',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/secp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Artur Casino',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        'Popular Trends',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    new Expanded(
                      child: Text(
                        'view all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF2BD993)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/firtp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('alejandro luengo',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/lastp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              'Achitecture buildings',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/secp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Artur Casino',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        'Popular Trends',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    new Expanded(
                      child: Text(
                        'view all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF2BD993)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/firtp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('alejandro luengo',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/lastp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              'Achitecture buildings',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/secp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Artur Casino',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Text(
                        'Popular Trends',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    new Expanded(
                      child: Text(
                        'view all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF2BD993)),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/firtp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('alejandro luengo',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/lastp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              'Achitecture buildings',
                              style: TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 100.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage('images/secp.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Text('Artur Casino',
                                style: TextStyle(fontSize: 16.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
