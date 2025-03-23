import 'package:flutter/material.dart';
// import 'package:tugas11/user/user_model.dart';
// import 'package:tugas11/service/user_service.dart';
import 'package:get/get.dart';
import 'package:tugas11/controller/user_controller.dart';

class UserDetailPage extends StatelessWidget {
  final int userId;
  final UserController userController = Get.find();
  UserDetailPage({Key? key, required this.userId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    userController.fetchUserById(userId);
    return Scaffold(
      appBar: AppBar(title: Text('User Detail')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        final user = userController.userDetail.value;
        if (user == null) {
          return Center(child: Text('User Not Found'));
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(user.avatar),
            Text(
              '${user.firstName} ${user.lastName}',
              style: TextStyle(fontSize: 24),
            ),
            Text(user.email, style: TextStyle(fontSize: 18)),
          ],
        );
      }),
    );
  }
}
