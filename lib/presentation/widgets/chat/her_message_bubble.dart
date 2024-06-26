import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble ({super.key});

  @override
  Widget build(BuildContext context){

    final colors = Theme.of(context).colorScheme;

    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        
        Container (
          decoration: BoxDecoration(
            color: colors.secondary.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Consequat velit Lorem cupidatat do sint dolore consectetur.')
            ),

        ),

        const SizedBox(height: 10),

        _ImageBubble(),
      ]
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/no/11-e6b930256265890554c1464973ebba55.gif',
        width: size.width * 0.5,
        height: size.height * 0.2,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.5,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Cargando... '),
          );
        }
      ),
    );
  }
}