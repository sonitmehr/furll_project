import 'package:flutter/material.dart';
import 'package:furll_project/provider/collage_provider.dart';
import 'package:furll_project/screens/frame_view_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CollageProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furll Project',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: CollageScreen(),
        home: FrameViewScreen(),
      ),
    );
  }
}
