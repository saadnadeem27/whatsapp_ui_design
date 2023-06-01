import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  final String networkImageURL;
  final String title;
  final String subtitle;
  final String time;
  ChatListTile(
      {super.key,
      required this.networkImageURL,
      required this.subtitle,
      required this.time,
      required this.title});

  @override
  Widget build(BuildContext context) {
   
      return ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(networkImageURL)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(time),
      );
    
  }
}
