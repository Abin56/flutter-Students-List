import 'package:flutter/cupertino.dart';
import 'package:student_list/addstudentslist.dart';
import 'package:student_list/folder%20data_base/db/student_model.dart';

//value Notifier Create list

ValueNotifier<List<studentsModel>> studentNotifier = ValueNotifier([]);

//
Future<void> addStudentList(studentsModel value) async {
  studentNotifier.value.add(value);
  studentNotifier.notifyListeners();
}
