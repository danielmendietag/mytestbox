import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Image.asset('assets/btnLeftMenu.png'),
            );
          }),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}
