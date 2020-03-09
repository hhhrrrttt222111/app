import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PassGen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EMAIL ID VALIDATORS'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 6,
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 20),

            sliver: SliverGrid.count(
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              crossAxisCount: 2,
              children: <Widget>[

                GestureDetector(
                  child: Container(
                    child: RaisedButton(
                      child: Text('LastPass',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://www.lastpass.com/password-generator';

                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(

                    child: RaisedButton(
                      child: Text('Norton',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),

                      onPressed: () async{
                        const url = 'https://my.norton.com/extspa/passwordmanager?path=pwd-gen';

                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
