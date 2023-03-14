import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<String> nav = ['Мои фото', 'Галерея'];
  Map<String, dynamic> data = {
    'Мои фото': [
      'https://picsum.photos/1200/501',
      'https://picsum.photos/1200/502',
      'https://picsum.photos/1200/503',
      'https://picsum.photos/1200/504',
      'https://picsum.photos/1200/505',
      'https://picsum.photos/1200/506',
      'https://picsum.photos/1200/507',
      'https://picsum.photos/1200/508',
      'https://picsum.photos/1200/509',
      'https://picsum.photos/1200/510',
    ],
    'Галерея': [
      'https://picsum.photos/1200/511',
      'https://picsum.photos/1200/512',
      'https://picsum.photos/1200/513',
      'https://picsum.photos/1200/514',
      'https://picsum.photos/1200/515',
      'https://picsum.photos/1200/516',
      'https://picsum.photos/1200/517',
      'https://picsum.photos/1200/518',
      'https://picsum.photos/1200/519',
      'https://picsum.photos/1200/520',
    ]
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: nav.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Homework example'),
          ),
          body: TabBarView(
            children: nav.map((name) {
              return ListView(
                key: PageStorageKey(name),
                children: <Widget>[
                  ...(data[name] as List<String>).map((image) {
                    return Image.network(image);
                  }).toList()
                ],
              );
            }).toList(),
          ),
        ));
  }
}

// class ListOfLinks {
//   List<String> images;
//
//   ListOfLinks({required this.images});
//
//   factory ListOfLinks.fromJson(Map<String, dynamic> json, String galeryName) {
//     return ListOfLinks(images: json[galeryName] as List<String>);
//   }
// }

// class ImageList extends StatelessWidget {
//   final List<String> imageString;
//   const ImageList({Key? key, required this.imageString}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       ...imageString.map((image) => Image.network(image)).toList()
//     ],);
//   }
// }
