import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:brain/DataAccessLayer/Models/project.dart';
import 'package:brain/DataAccessLayer/Repositories/projects_repo.dart';
import 'package:get/get.dart';

class ProjectController extends GetxController {
  final UserController userController = Get.find();
  ProjectsRepo repo = ProjectsRepo();
  List<UserProject> projects = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getprojects();
    super.onInit();
  }

  Future<void> getprojects() async {
    loading.value = true;
    projects = await repo.myProjects(userController.user!.id);
    update();
    loading.value = false;
  }
}
