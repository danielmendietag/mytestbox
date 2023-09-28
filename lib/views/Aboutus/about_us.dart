import 'package:flutter/material.dart';
import 'package:mytestbox/widgets/main_drawer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
        child: Text('About Us'),
      ),
    );
  }
}
