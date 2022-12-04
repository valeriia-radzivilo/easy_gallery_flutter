import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Gallery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Easy gallery'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> names =["Lera","Anna","Sam"] ;
  List<String> photos =["https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80","https://images.unsplash.com/photo-1622782045716-a05bcc4f5ae8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80","https://images.unsplash.com/photo-1622782262026-6a327a45014f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kaWFuJTIwZ2lybHN8ZW58MHx8MHx8&w=1000&q=80"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:SingleChildScrollView(
      child: Column(

        children: <Widget>[

          for(int i =0; i<photos.length;i++)
          Stack(

            children:<Widget>[

              Image.network(photos.elementAt(i)),
            Positioned(
              left:100,
            top:200,
            child: Text(names.elementAt(i),

            style: const TextStyle(
              fontSize: 45,
              backgroundColor: Colors.white,
            ),
            )

            ),

            ]
          ),

        ],
    ),

    )
    );

  }
}
