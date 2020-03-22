import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("assets/images/Instagram_logo.png"),
                  width: 120,
                  height: 120,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(colors: [
                      Color(0xFFE98825),
                      Color(0xFFA6207E),
                    ]).createShader(
                        Rect.fromLTWH(0, 0, rect.width, rect.height));
                  },
                  child: Text(
                    "HELLO",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
