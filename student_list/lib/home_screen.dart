import 'package:flutter/material.dart';
import 'package:student_list/addstudentslist.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  //
  bool searchicon = false;
  final _searchcontroller = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.search))
        ],
        title: searchicon == false
            ? const Text('Student List')
            : const TextField(
                decoration: InputDecoration(hintText: 'Search for Students'),
              ),
      ),
      //
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Addstudentlist()));
        },
        label: Text('Add Students'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      //
    );
  }
}
