// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';

class genLoginSignupHeader extends StatelessWidget {
  late String pageTitle;

  genLoginSignupHeader({
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            pageTitle,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent,
            ),
          ),
          SizedBox(height: 10.0),
          // * Asset login image
          Image.asset(
            "assets/images/login_image.png",
            height: 150.0,
            width: 150.0,
          ),
        ],
      ),
    );
  }
}
