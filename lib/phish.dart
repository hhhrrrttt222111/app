import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class PhishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHISHING ANALYSER'),
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
                      child: Text('isitPhishing',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://isitphishing.org/';

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
                          child: Text('NameCheck',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                          ),

                          onPressed: () async{
                            const url = 'https://www.namecheck.com/phishing-check/';

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
                      child: Text('PSafe',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://www.psafe.com/dfndr-lab/';

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
                      child: Text('Dr Link Check',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),
                      ),
                      onPressed: () async{
                        const url = 'https://www.drlinkcheck.com/';

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
      backgroundColor: Colors.redAccent,
    );
  }
}

