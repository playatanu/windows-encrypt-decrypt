import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Encrypt');
    setWindowMinSize(const Size(330, 530));
    setWindowMaxSize(const Size(330, 530));
    setWindowVisibility(visible: true);
    //setWindowTitleRepresentedUrl(Uri.parse('https://playatanu.in'));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
