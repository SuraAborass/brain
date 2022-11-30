import 'package:brain/DataAccessLayer/Models/user.dart';
import 'package:get_storage/get_storage.dart';

class BoxClient {
  var box = GetStorage();

  Future<bool> getAuthState() async {
    print(await box.read('authed'));
    if (await box.read('authed') != null) {
      return true;
    }
    return false;
  }

  Future<User> getAuthedUser() async {
    return User.fromBoxMap(await box.read('userdata'));
  }

  Future<void> setAuthedUser(User user) async {
    await box.write('authed', true);
    await box.write('userdata', user.toMap());
  }

  Future<void> removeUserData() async {
    await box.remove('authed');
    await box.remove('userdata');
  }
}
