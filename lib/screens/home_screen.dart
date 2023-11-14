import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_07/models/dog.dart';
import 'package:provider_overview_07/utilities/breed_age.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider 05'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '- name: ${context.select<Dog, String>((Dog dog)=> dog.name)}',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          BreedAndAge(),
        ],
      )),
    );
  }
}
