import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.item
  });
  final ItemClass item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Card(
          child: Container(
              padding: const EdgeInsets.all(kDouble10),
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: kDouble5),
                  Image.asset(item.imagePath),
                  Text(item.title,
                      style:
                          const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          )
                  ),
                  Text('This is the ${item.title} description'),
                  const SizedBox(height: kDouble5)
                ],
              ))),
    );
  }
}
