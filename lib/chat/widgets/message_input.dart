import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({Key? key, required this.user, required this.controller, required this.onPressed}) : super(key: key);
  final String user;
  final TextEditingController controller;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Text(user)),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Votre message',
              )),
        ),
        IconButton(
            onPressed: () {
              onPressed();
            },
            icon: const Icon(Icons.send))
      ],
    );
  }
}
