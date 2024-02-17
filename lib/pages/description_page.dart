import 'package:flutter/material.dart';
import 'package:learnflutter/class/item_class.dart';
import 'package:learnflutter/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.item});

  final ItemClass item;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCutom = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.title),
        backgroundColor: Colors.red[600],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.dangerous),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('SnackBar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(kDouble10),
            child: Column(
              children: [
                Image.asset(widget.item.imagePath),
                Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCutom = 5;
                        });
                      },
                      child: const Text('Small Button'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCutom = 20;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.yellow[500],
                        foregroundColor: Colors.black
                      ),
                      child: const Text('Medium Button'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCutom = 50;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[500],
                        foregroundColor: Colors.white
                      ),
                      child: const Text('Large Button'),
                    ),
                    FilledButton(
                      onPressed: () {
                        setState(() {
                          fontSizeCutom = 125;
                        });
                      },
                      child: const Text('Huge Button'),
                    ),
                  ],
                ),
                FittedBox(
                  child: Text(
                    widget.item.title,
                    style: TextStyle(
                        fontSize: fontSizeCutom, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(baconDescription,
                    style: TextStyle(fontSize: fontSizeCutom),
                    textAlign: TextAlign.justify),
                const SizedBox(height: kDouble20),
                Text(baconDescription,
                    style: TextStyle(fontSize: fontSizeCutom),
                    textAlign: TextAlign.justify),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
