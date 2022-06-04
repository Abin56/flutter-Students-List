import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_list/folder%20data_base/db/student_model.dart';
import 'package:student_list/home_screen.dart';
import 'package:image_picker/image_picker.dart';

class Addstudentlist extends StatefulWidget {
  const Addstudentlist({Key? key}) : super(key: key);

  @override
  State<Addstudentlist> createState() => AddstudentlistState();
}

class AddstudentlistState extends State<Addstudentlist> {
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _contactcontroller = TextEditingController();
  final _domaincontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Create Student List'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 44, 44, 44),
                radius: 80,
                child: IconButton(
                  onPressed: () {
                    showbottomsheet(context);
                  },
                  icon: Icon(
                    Icons.add_a_photo_outlined,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Add photo'),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _namecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Enter your Name'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _agecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your Age'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _contactcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Contact Number'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _domaincontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Domain'),
              ),
              const SizedBox(
                height: 50,
              ),
              //
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Home_Screen()));
                  setState(() {
                    onAddingstudentslist();
                  });
                },
                icon: Icon(Icons.add),
                label: Text('Add Student'),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              )
            ],
          ),
        ),
      )),
    );
  }

  //Showbottom Sheet

  Future<void> showbottomsheet(BuildContext ctx) async {
    showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 200,
          color: Color.fromARGB(209, 0, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.photo_library_outlined)),
                    ),
                    CircleAvatar(
                      radius: 35,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text('Gallery'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text('Camera'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //Adding students on list
  //
  Future<void> onAddingstudentslist() async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();
    final _contact = _contactcontroller.text.trim();
    final _domain = _domaincontroller.text.trim();

    //

    if (_name.isEmpty || _age.isEmpty || _contact.isEmpty || _domain.isEmpty) {
      return;
    } else {
      final _addingOnHomescreen = studentsModel(
          name: _name, age: _age, contact: _contact, domain: _domain);
      print('Workkkkkkkkkkkkkkkkkkking');

      //calling
      // onAddingstudentslist(_addingOnHomescreen);
    }
  }
  //Camera and Gallery

  //Gallery

  Future<void> picfromGallery() async {
    final images = ImagePicker().pickImage(source: ImageSource.gallery);

    if (images == null) return;
    // final imageTemporary = File(images.path);
    // images = imageTemporary;
    // setState(() {});
  }
}
