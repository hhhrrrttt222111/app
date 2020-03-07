import 'package:flutter/material.dart';
import 'tools.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    title: 'Cyber',
    home: HomePage(),
  ));
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('# APP NAME #'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 6,
      ),
      drawer: Drawer(

        child: ListView(
          children: <Widget>[
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/logo1.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              title: Text("PAGE 1"),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AboutUs("About us")));
              }
            ),
            ListTile(
              title: Text("PAGE 2"),
              trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AboutUs("About us")));
                }
            ),
            Divider(),
            ListTile(
              title: Text("CLOSE"),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),



      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.black, Colors.green]
          )
        ),


        child: Align(
          alignment: Alignment(0,0.5),
          child: SizedBox(
            width: 130.0,
            height: 50.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Text('Get Started'),
              elevation: 10,
              color: Colors.lightGreen,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

