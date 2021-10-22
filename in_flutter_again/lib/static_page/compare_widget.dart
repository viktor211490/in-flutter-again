import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:in_flutter_again/static_page/title_section.dart';
import 'package:in_flutter_again/static_page/tsxt_section.dart';

import 'build_button_column.dart';

class Inner extends StatelessWidget {
  const Inner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}