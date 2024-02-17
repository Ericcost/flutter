import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LearnFlutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(item: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png')),
            Row(
              children: [
                Expanded(
                  child: CardWidget(item: ItemClass(title: 'Space', imagePath: 'images/space.png')),
                ),
                Expanded(
                  child: CardWidget(item: ItemClass(title: 'Travel', imagePath: 'images/travel.png')),
                ),
              ],
            ),
            CardWidget(item: ItemClass(title: 'Yeah', imagePath: 'images/yeah.png')),
          ],
        ),
      )
    );
  }
}
