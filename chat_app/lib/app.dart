import 'package:chat_app/pages/chat/chat_page.dart';
import 'package:chat_app/pages/home/auth/login_page.dart';
import 'package:chat_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'WebSocket Demo';
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData.dark(),
      color: Colors.white,
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/home/chat': (context) => ChatPage(),
      },
      title: title,
    );
  }
}

// channel: IOWebSocketChannel.connect('wss://echo.websocket.org'),
