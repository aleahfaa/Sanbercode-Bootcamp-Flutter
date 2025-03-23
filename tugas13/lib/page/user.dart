import 'package:flutter/material.dart';
// import 'package:tugas11/service/user_service.dart';
// import 'package:tugas11/user/user_model.dart';
import 'package:tugas11/page/user_detail.dart';
import 'package:get/get.dart';
import 'package:tugas11/controller/user_controller.dart';

class UserPage extends StatelessWidget {
  final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Page')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                leading: Image.network(user.avatar),
                subtitle: Text(user.email),
                onTap: () {
                  Get.to(() => UserDetailPage(userId: user.id));
                },
              ),
            );
          },
        );
      }),
    );
  }
}
