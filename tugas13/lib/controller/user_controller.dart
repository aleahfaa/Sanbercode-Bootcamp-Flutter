import 'package:get/get.dart';
import 'package:tugas11/service/user_service.dart';
import 'package:tugas11/user/user_model.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs;
  var isLoading = false.obs;
  var userDetail = Rxn<UserModel>();
  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var fetchedUsers = await UserService().fetchUser();
      users.assignAll(fetchedUsers);
    } catch (e) {
      // print('Error fetching users: $e');
      Get.snackbar('Error', 'Failed to fetch users');
    } finally {
      isLoading(false);
    }
  }

  void fetchUserById(int id) async {
    try {
      isLoading(true);
      var user = await UserService().fetchUserById(id);
      userDetail.value = user;
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch user detail');
    } finally {
      isLoading(false);
    }
  }
}
