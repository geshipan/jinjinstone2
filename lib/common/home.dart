import 'package:flutter/material.dart';
import 'package:flutter_application_1/posts/posts.dart';
import 'package:flutter_application_1/user/My.dart';

class MainTabs extends StatelessWidget {
  const MainTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: '마이 홈'),
                Tab(text: '게시판'),
              ],
            ),
            title: const Text('진진돌이의 게시판'),
          ),
          body: const TabBarView(
            children: [My(), Post()],
          ),
        ),
      ),
    );
  }
}
