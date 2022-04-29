import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _url = ('https://youtube.com');
  final String _phonenumber = '+5531995194376';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: MaterialButton(
              onPressed: () async {
                final _call = 'tel:$_phonenumber';
                final _text = 'sms:$_phonenumber';
                if (await canLaunch(_text)) {
                  await launch(_text);
                }
              },
              color: Colors.blue,
              child: Text(
                'Text Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
