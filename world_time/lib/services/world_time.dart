import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  String time; // time in location
  String flag; // url to asset flag icon
  String url; // location url for api endpoint
  bool isDayTime; // true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      // make request for local time data
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // Get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(2,3);

      // create datetime object
      DateTime now = DateTime.parse(dateTime);
      now = now.subtract(Duration(hours: int.parse(offset)));

      // set time property
      isDayTime = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e){
      print('Caught error: $e');
      time = 'Could not get time data';
    }

  }



}