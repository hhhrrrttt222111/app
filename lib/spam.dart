import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SpamPage extends StatelessWidget {
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
                      child: Text('Hunter',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://hunter.io/email-verifier';

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
                      child: Text('Verify Email \t\t\t\t\t\t\t\t\t 1',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),

                      onPressed: () async{
                        const url = 'https://verify-email.org/';

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
                      child: Text('Verify Email \t\t\t\t\t\t\t\t\t 2',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://www.verifyemailaddress.org/';

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
                      child: Text('Snov IO',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://snov.io/email-verifier';

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
      backgroundColor: Colors.orangeAccent,
    );;
  }
}
