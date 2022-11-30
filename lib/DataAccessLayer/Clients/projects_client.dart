import 'package:brain/Constants/links.dart';
import 'package:http/http.dart' as http;

class ProjectsClient {
  Future<dynamic> getProjects(userid) async {
    var response =
        await http.get(Uri.parse(baseLink + "user/$userid/projects"));

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
