import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class NotificationClient{
  Future<dynamic> getNotifications(userid) async {
    var response = await http.get(
        Uri.parse(baseLink + "toUser/$userid/notifications"));

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}