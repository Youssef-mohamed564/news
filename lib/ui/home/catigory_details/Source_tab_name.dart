import 'package:flutter/cupertino.dart';
import 'package:news_app/model/SourceResponse.dart';
import 'package:news_app/utils/app_styles.dart';

class SourceTabName extends StatelessWidget {
  Sources source;
  bool isSelected;
   SourceTabName({super.key,required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(source.name??'',style: AppStylse.bold14Black,) ;
  }
}
