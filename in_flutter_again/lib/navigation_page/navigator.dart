import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:in_flutter_again/static_page/compare_widget.dart';

class Page {
  final String name;
  final String description;
  final String dateOfCreate;
  final Widget widget;
  final Icon logo;

  const Page({required this.widget, required this.name, required this.description, required this.dateOfCreate, required this.logo});
}
final pages =[
  const Page(
      name: "Building layouts",
      dateOfCreate: " Октябрь 2021 года",
      description: "Gkfybhj",
      widget: Inner(),
      logo: Icon(Icons.adjust,size: 60.0,)
  ),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Page> _pages = pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(
        child: ListView(
          children: _pages.map(_buildItem).toList(),
        ),
      ),

    );
  }
  Widget _buildItem(Page e) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        color: Colors.blue,
        elevation: 20.0,
        borderOnForeground: true,
        child: ListTile(
          title:  Container(

            height: 70.0,
            child: Center(
              child: Text(e.name, style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
          leading: e.logo,
          subtitle: Text(e.description),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>e.widget));
          },

        ),
      ),
    );
  }
}
