import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String? url;
  NetworkHelper({this.url});

  Future getData() async {
  
    var response = await http.get(Uri.parse(url!));
  

    if (response.statusCode == 200) {
      var data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}
