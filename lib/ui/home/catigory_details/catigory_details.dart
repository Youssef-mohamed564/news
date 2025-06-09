import 'package:flutter/material.dart';
import 'package:news_app/api/api_manager.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/ui/home/catigory_details/source_tab_widget.dart';
import 'package:news_app/utils/app_styles.dart';

class CatigoryDetails extends StatefulWidget {
  const CatigoryDetails({super.key});

  @override
  State<CatigoryDetails> createState() => _CatigoryDetailsState();
}

class _CatigoryDetailsState extends State<CatigoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
        future: ApiManager.getSources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Column(children: [
              Text(
                'Something went wrong!',
                style: AppStylse.bold14Black,
              ),
              ElevatedButton(
                  onPressed: () {ApiManager.getSources();
                  setState(() {

                  });},
                  child: Text(
                    'Try Again',
                    style: AppStylse.medium16Black,
                  ))
            ]);
          } else if (snapshot.data?.status != 'ok') {
            return Column(children: [
              Text(
                snapshot.data!.message!,
                style: AppStylse.bold14Black,
              ),
              ElevatedButton(
                  onPressed: () {ApiManager.getSources();
                    setState(() {

                    });},
                  child: Text(
                    'Try Again',
                    style: AppStylse.medium16Black,
                  ))
            ]);}else{
            var sourcesList = snapshot.data?.sources ?? [];


           return SourceTabWidget(sourcesList: sourcesList,
          );
        }});
  }
}
