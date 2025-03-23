import 'package:flutter/material.dart';
import 'package:tugas11/user/user_model.dart';
import 'package:tugas11/service/user_service.dart';

class UserDetailPage extends StatelessWidget {
  final int userId;

  const UserDetailPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User  Detail')),
      body: FutureBuilder<UserModel>(
        future: UserService().fetchUserById(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final user = snapshot.data!;
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
          }
        },
      ),
    );
  }
}
