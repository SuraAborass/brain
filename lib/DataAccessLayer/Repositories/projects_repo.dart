import 'dart:convert';

import 'package:brain/DataAccessLayer/Clients/projects_client.dart';

import '../Models/project.dart';

class ProjectsRepo {
  ProjectsClient client = ProjectsClient();

  Future<List<UserProject>> myProjects(userid) async {
    var response = await client.getProjects(userid);
    if (response != "") {
      final parsed = json.decode(response).cast<Map<String, dynamic>>();
      return parsed
          .map<UserProject>((json) => UserProject.fromMap(json))
          .toList();
    }

    return [];
  }
}
