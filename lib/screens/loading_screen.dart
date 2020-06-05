import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/loading_background.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8), BlendMode.dstATop),
        ),
      ),
      constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Center(
            child: RaisedButton(
              onPressed: () {
                //Get the current location
              },
              child: Text('Get Location',
              style: TextStyle(
                fontSize: 30.0,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
