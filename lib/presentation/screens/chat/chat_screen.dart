import "package:flutter/material.dart";
import "package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart";
import "package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart";
import "package:yes_no_app/presentation/widgets/shared/message_field_box.dart";

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuario'),
        leading: const Padding (
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.icon-icons.com/icons2/1508/PNG/512/systemusers_104569.png'),
          ),
        ),
      ),
      body: _ChatView( ),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 15.0, vertical: 10.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0) ?  const MyMessageBubble() : const HerMessageBubble();
              },
            )),

            const MessageFieldBox(),
          ]
        ),
      ) 
    );
  }
}