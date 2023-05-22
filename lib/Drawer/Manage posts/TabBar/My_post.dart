// ignore: file_names
import 'package:cehpoint_admin/Drawer/Manage%20posts/TabBar/Other_posts.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class My_post extends StatelessWidget {
  const My_post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Other_posts(),
    );
  }
}
