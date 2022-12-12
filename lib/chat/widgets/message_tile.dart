import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({Key? key, required this.message, required this.user}) : super(key: key);
  final String message;
  final String user;

  @override
  Widget build(BuildContext context) {
    if(user == 'A'){
      return Row(
        children: [
          CircleAvatar(child: Text(user)),
          const SizedBox(width: 16),
          Text(message),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(message),
          const SizedBox(width: 16),
          CircleAvatar(child: Text(user)),
        ],
      );
    }

  }
}
