import 'package:flutter/material.dart';
import 'package:news_app/ui/home/catigory_details/catigory_details.dart';
import 'package:news_app/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName='/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true, title: Text('General',style: AppStylse.bold20Black),),
      body:  const Column(children: [ CatigoryDetails(),])
    );
  }
}
