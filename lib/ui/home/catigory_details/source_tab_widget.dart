import 'package:flutter/material.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/ui/home/catigory_details/Source_tab_name.dart';

class SourceTabWidget extends StatelessWidget {
  List<Sources> sourcesList = [];
  int selectedIndex = 0;
  SourceTabWidget({super.key, required this.sourcesList, });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: sourcesList.length,
      child: Column(
        children: [
          TabBar(
            tabAlignment:TabAlignment.start ,
            isScrollable: true,
              onTap: (index) {
                selectedIndex = index;
              },
              tabs: sourcesList.map((e) {
                return SourceTabName(
                    source: e,
                    isSelected: sourcesList.indexOf(e) == selectedIndex);
              }).toList())
        ],
      ),
    );
  }
}
