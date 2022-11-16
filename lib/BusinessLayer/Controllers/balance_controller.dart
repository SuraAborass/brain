import 'package:get/get.dart';
import '../../DataAccessLayer/Clients/balance_client.dart';

class BalanceController extends GetxController{

  String? balance;
  BalanceClient client = BalanceClient();

    void onInit() async {
        balance = await client.getBalance(3);
      update();
    super.onInit();
  }

}