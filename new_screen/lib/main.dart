import 'package:flutter/material.dart';
import 'login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RichOpinions',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.green),
                  child: new Icon(
                    Icons.local_airport,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.redAccent),
                  child: new Icon(
                    Icons.local_car_wash,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 30.0, top: 55.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.amber),
                  child: new Icon(
                    Icons.place,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 90.0, top: 25.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Colors.blueAccent),
                  child: new Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom:90.0),
                ),
                new Text(
                  'Rich Opinions',
                  style: new TextStyle(fontSize: 30.0),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const  EdgeInsets.only(left:20.0, right: 10.0 , top: 40.0),
                    child: GestureDetector( onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
                    },
                                          child: new Container(
                        alignment: Alignment.center,
                        height: 70.0,
                        decoration: new BoxDecoration(color: Colors.green , borderRadius: new BorderRadius.circular(10.0)),
                        child: new Text('Sign In with Email', style: new TextStyle(fontSize: 20.0 , color: Colors.white),),
                      ),
                    ),
                  ),
                )
              ],
            ),
             new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 10.0 , top: 20.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Colors.blue , borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text('Facebook', style: new TextStyle(fontSize: 20.0 , color: Colors.white),),
                    ),
                  ),
                ),
                 Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 10.0 , top: 20.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Colors.red , borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text('Google', style: new TextStyle(fontSize: 20.0 , color: Colors.white),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
