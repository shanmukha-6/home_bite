import 'package:home_bite/Constants/Apiconstants.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> getPosts() async {
    try {
      final response = await http.get(Uri.parse(Apiconstants.POSTSapi));

      if (response.statusCode == 200) {
        print("Response: ${response.body}");
        return response.body;
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception: $e");
    }
  }

  Future<dynamic> getPoster() async {
    try {
      final response = await http.get(Uri.parse(Apiconstants.POST2api));
      if (response.statusCode == 200) {
        print("Response: ${response.body}");
        return response.body;
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception $e");
    }
  }
}
