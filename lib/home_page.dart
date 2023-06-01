import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_design/pages/chat_page.dart';
import 'package:whatsapp_ui_design/widgets/chat_list_tile.dart';
import 'package:whatsapp_ui_design/model/chat_list_tile_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search_outlined),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        value: '1',
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('New Broadcast'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Linked devices'),
                      ),
                      PopupMenuItem(
                        value: '4',
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        value: '5',
                        child: Text('Settings'),
                      ),
                    ])
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.groups),
              iconMargin: EdgeInsets.zero,
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Text('Groups'),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ]),
      ),
    );
  }
}
