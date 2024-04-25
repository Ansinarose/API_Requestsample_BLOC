
import 'package:api_request_bloc/features/posts/ui/posts_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primaryColor: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const PostsPage()
    );
  }
}

