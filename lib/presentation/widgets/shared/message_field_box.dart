import "package:flutter/material.dart";

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final textController = TextEditingController();

    final focusNode = FocusNode();

    final InputDecoration inputDecoration = InputDecoration(
      hintText: 'End your message "?"',
      enabledBorder: border,
      focusedBorder: border,
      border: const UnderlineInputBorder(),
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon( Icons.send_outlined ),
        onPressed: () {
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) => {
        textController.clear(),
        focusNode.requestFocus(),
      },
      onChanged: (value) => print(' changed ${value}'),
    );
  }
}