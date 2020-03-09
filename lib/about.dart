import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'ABOUT',
      theme: ThemeData(fontFamily: 'Roboto Mono'),

      home: Scaffold(
        appBar: AppBar(
          title: Text('ABOUT'),
          backgroundColor: Colors.black,
          elevation: 6,
        ),
        body: Container(
            decoration: BoxDecoration(color: Colors.green[900]),

            child: Align(
              child: Text('This app involves features like identifying phishing links, spam accounts. '
                  'We also provide awareness about various cyber crimes and how to deal'
                  ' with it effectively. 95% of the cyber security breaches are due to human errors.'
                  'Majority of the global organisations are not prepared to handle a'
                  'Sophisticated cyber attack. Social engineering is a current favourite tactic among cyber criminals-the psychological '
                  'manipulation of victims to convince them to willingly or unwillingly surrender private data that is then subverted for nefarious purposes.'
              ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            )
        ),
      ),
    );
  }
}


