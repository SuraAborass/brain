import '../../DataAccessLayer/Clients/user_client.dart';
import '../../DataAccessLayer/Models/user.dart';

class UserRepo {
  var client = UserClient();

  Future<User?>login(email,password) async {
    var data = await client.isLogin(email,password);
    if (data != null) {
      return User.fromMap(data);
    }
    return null;
  }

  Future<User?> addInfo(id, email, password) async {
    var data = await client.addInfo(id, email, password);
    if (data != null) {
      return User.fromMap(data);
    }
    return null;
  }
}
