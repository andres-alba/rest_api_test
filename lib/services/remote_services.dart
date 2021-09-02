import 'package:http/http.dart' as http;
import 'package:rest_api_test/models/user_model.dart';

class RemoteServices {
  // we are using client because we want to call this only once
  static var client = http.Client();

  static Future<Data> fetchUsers() async {
    try {
      var response =
          await client.get(Uri.parse('https://reqres.in/api/users?page=2'));

      if (response.statusCode == 200) {
        print('succesful fetch from server');
        var jsonString = response.body;
        //print(jsonString);
        return dataFromJson(jsonString);
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
    throw ('asd');
  }
}
