import 'package:flutter/material.dart';

import 'colors/app_color.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
    Key? key,
    this.topImage = 'assets/images/main_top.png',
    this.bottomImage = 'assets/images/login_bottom.png',
    this.bottomImage2 = 'assets/images/main_bottom.png',
  }) : super(key: key);

  final String topImage;
  final String bottomImage;
  final String bottomImage2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Image.asset(
            //     topImage,
            //     width: 120,
            //   ),
            // ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Image.asset(bottomImage, width: 120),
            // ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   child: Image.asset(bottomImage2, width: 120),
            // ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
