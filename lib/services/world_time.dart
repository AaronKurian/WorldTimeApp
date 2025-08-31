import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {

  String location = ''; //location name for UI
  String time = ''; //the time in that location
  String flag = ''; //url to an asset flag icon
  String url = ''; //location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

 Future<void> getTime() async {


      try{
        Response response = await get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=$url'));
        Map data = jsonDecode(response.body);
        //print(data);

        //get properties from data
        String datetime = data['dateTime'];
        String timezone = data['timeZone'];
        //print('DateTime: $datetime');
        //print('TimeZone: $timezone');

        //create DateTime object
        DateTime now = DateTime.parse(datetime);
        print('Current time in $timezone: $now');

        time = DateFormat.jm().format(now);
        print(time);

      }
      catch(e){
        print('caught error: $e');
        time = 'could not get time data';
      } 
      //make request
      
  }

}

