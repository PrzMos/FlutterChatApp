import 'package:chat_app/pages/home/auth/login_page.dart';
import 'package:chat_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'WebSocket Demo';
    return MaterialApp(
      initialRoute: '/',
      showSemanticsDebugger: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
      title: title,
      home: HomePage(
        title: title,
      ),
    );
  }
}

// channel: IOWebSocketChannel.connect('wss://echo.websocket.org'),
