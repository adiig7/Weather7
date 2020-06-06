import 'package:flutter/material.dart';
import 'package:weather7/location.dart';
import 'package:weather7/services/networking.dart';


const apiKey = 'c125b2a43f80c370dd227ea81fd86628';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  void getData() async{
     }


  void getCurrentLocation() async{
    Location location = Location();
    await location.getLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    print(latitude);

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&exclude=hourly,daily&appid=$apiKey');

    var weatherData = await networkHelper.getData();


//
//    String cityName = decodedData['timezone'];
//    double lat = decodedData['lat'];
//    double lon = decodedData['lon'];
//    int humidity = decodedData['current']['humidity'];
//    double temp = decodedData['current']['temp'];
//    String desc = decodedData['current']['weather'][0]['description'];


  }

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
