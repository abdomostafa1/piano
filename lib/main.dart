import 'package:flutter/material.dart';
import 'package:piano/widgets/tune_item.dart';
import 'models/tune_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<TuneModel> tunes = [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav')
  ];

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> tuneItems = [];
  //   for (var tune in tunes) {
  //     tuneItems.add(TuneItem(tune: tune));
  //   }
  //   return tuneItems;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Piano', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff26313A),
        elevation: 0,
      ),
      body: Column(
        children: tunes.map((tune) => TuneItem(tune: tune)).toList(),
      ),
    );
  }
}
