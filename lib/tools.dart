import 'package:flutter/material.dart';
import 'package:omega_safe/spam.dart';
import 'phish.dart';
import 'spam.dart';
import 'pswd.dart';
import 'pass_strength.dart';


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOOLS'),
        backgroundColor: Colors.black,
        elevation: 6,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.green[300],
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 110,
                child: ListTile(
                  leading: Icon(Icons.link_off),
                  title: Text("Phishing Link Analyser",),
                  subtitle: Text("Check Suspicious Links"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PhishPage())),
                ),
              ),
            ),
            Container(
              color: Colors.green[400],
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 110,
                child: ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text("Spam Filters",),
                  subtitle: Text("Filter Unwanted Mails"),

                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SpamPage())),
                ),
              ),
            ),

            Container(
              color: Colors.green[600],
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 110,
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Password Strength",),
                  subtitle: Text("Check How Strong Is Your Password"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PassStrength())),



                ),
              ),
            ),

            Container(
              color: Colors.green[700],
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 110,
                child: ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Password Generator",),
                  subtitle: Text("Generate Strong Password"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PassGen())),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

