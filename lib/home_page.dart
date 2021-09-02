import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_test/controllers/user_controller.dart';

class MyHomePage extends StatelessWidget {
  final UserController _controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hi'),
            Expanded(
                child: Obx(
              () => (ListView.builder(
                  itemCount: _controller.userList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '${_controller.userList[index].firstName}',
                      ),
                      subtitle: Text('${_controller.userList[index].lastName}'),
                    );
                  })),
            )),
          ],
        ),
      ),
    );
  }
}
