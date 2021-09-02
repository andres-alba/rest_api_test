import 'package:get/get.dart';
import 'package:rest_api_test/models/user_model.dart';
import 'package:rest_api_test/services/remote_services.dart';

class UserController extends GetxController {
  // declaring list of users.. no need to use .obs
  var userList = RxList<Datum>();

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    var users = await RemoteServices.fetchUsers();
    if (users.data != null) {
      userList.value = users.data!;
    }
  }
}
