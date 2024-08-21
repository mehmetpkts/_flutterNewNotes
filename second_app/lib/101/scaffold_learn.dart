import 'package:flutter/material.dart';
import 'package:second_app/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter project")),
      body: const Text("Merhaba"),
      backgroundColor: Colors.red,
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => Container(height: 200,) );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecorationProject(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ],
        ),
      ),
    );
  }
}
