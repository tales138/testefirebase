import 'package:testefirebase/components/blur_image_page_scaffold.dart';
import 'package:testefirebase/components/lets_start.dart';
import 'package:testefirebase/components/logo.dart';
import 'package:testefirebase/components/terms_and_conditions.dart';
import 'package:testefirebase/screens/login/edit_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurImagePageScaffold(
      imagePath: 'images/bg.jpg',
      body: [
        const Logo(height: 150.0, width: 150.0, radius: 50.0),
        Text(
          "Hello",
            style:
                TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 60)),
        Column(
          children: [
            Text("WhatsApp is a Cross-platform",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("mobile messaging with friends",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20)),
            Text("all over the world",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 20))
          ],
        ),
        TermsAndConditions(onPressed: () {}),
        LetsStart(onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => const EditNumber()));
        })
      ],
    );
  }
}