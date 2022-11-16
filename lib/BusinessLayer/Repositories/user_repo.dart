import '../../DataAccessLayer/Clients/user_client.dart';
import '../../DataAccessLayer/Models/user.dart';

class UserRepo {
  var client = UserClient();

  Future<User?> login(email,password) async {
    var data = await client.isLogin(email,password);
    if (data != null) {
      print('data not null');
      return User.fromMap(data);
    }
    return null;
  }

  Future<User?> updateInfo(id, email, password) async {
    var data = await client.updateInfo(id, email, password);
    if (data != null) {
      return User.fromMap(data);
    }
    return null;
  }
}
