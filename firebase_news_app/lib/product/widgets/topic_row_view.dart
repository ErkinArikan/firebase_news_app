import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TopicRowView extends StatelessWidget {
  final String topicName;
  final String topicIconName;

  const TopicRowView({
    super.key,
    this.topicName = 'Defult',
    this.topicIconName = 'ic_defaultIcon',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: context.sized.normalValue * 7,
            height: context.sized.normalValue * 4,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 246, 250),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                topicName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: context.sized.lowValue * 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
