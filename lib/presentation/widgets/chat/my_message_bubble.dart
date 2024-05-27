import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble ({super.key});

  @override
  Widget build(BuildContext context){

    final colors = Theme.of(context).colorScheme;

    return Column (
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 10),

        Container (
          decoration: BoxDecoration(
            color: colors.primary.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola')
            ),

        ),

        const SizedBox(height: 10),
      ]
    );
  }
}