import 'package:flutter/material.dart';



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
              color: Colors.lightGreen,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 70,
                child: ListTile(
                  leading: Icon(Icons.link_off),
                  title: Text("Phishing Link Analyser",),
                  subtitle: Text("Check Suspicious Links"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: (){
                    debugPrint("Hello");
                  },
                ),
              ),
            ),
            Container(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 70,
                child: ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text("Spam Filters",),
                  subtitle: Text("Filter Unwanted Mails"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: (){
                    debugPrint("Hello");
                  },
                ),
              ),
            ),
            Container(
              color: Colors.lightGreen,
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 70,
                child: ListTile(
                  leading: Icon(Icons.link_off),
                  title: Text("Phishing Link Analyser",),
                  subtitle: Text("Check Suspicious Links"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: (){
                    debugPrint("Hello");
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}