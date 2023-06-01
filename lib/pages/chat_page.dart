import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_design/model/chat_list_tile_model.dart';
import 'package:whatsapp_ui_design/widgets/chat_list_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatListTileModel().chatmodel.length,
      itemBuilder: (context, index) {
      return ChatListTile(
        networkImageURL: ChatListTileModel().chatmodel[index].networkImageURL,
        subtitle: ChatListTileModel().chatmodel[index].subtitle,
        time: ChatListTileModel().chatmodel[index].time,
        title: ChatListTileModel().chatmodel[index].title,
      );
    });
  }
}
