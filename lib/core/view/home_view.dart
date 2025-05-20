import 'package:flutter/material.dart';
import 'package:testapp/shared/constants/app_string.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.appName),
      ),
      body: Container(color: Colors.grey,),
    );
  }
}
