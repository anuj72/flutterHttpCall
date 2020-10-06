import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api_call/dto/weather_response_dto.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    print("started");
    super.initState();
  }
  @override
  void dispose() {
    print("destroyed");
    super.dispose();
  }
  void getData() async{
   http.Response response= await http.get("http://api.openweathermap.org/data/2.5/weather?lat=77&lon=35&appid=2f22fd15614cfb4582018b05f140b9fa");
   print(response);
   print('Response status: ${response.statusCode}');
   if(response.statusCode==200){
     print("success");
     print('Response body: ${response.body}');
     var long=jsonDecode(response.body)['coord']['lon'];
     print("long"+long.toString());
     var weatherdesc=jsonDecode(response.body)['weather'][0]['description'];
     print("weatherdesc"+weatherdesc.toString());

     var res=WeatherResponseDTO.fromJson(jsonDecode(response.body));
     var longd=res.coord.lon;
     print(longd);
   }else{
     print("fail");
     print('Response code: ${response.statusCode}');
   }

  }
  @override
  Widget build(BuildContext context) {
      getData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(body: Text("Hello"),),
    );
  }
}



