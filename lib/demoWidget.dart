import 'package:flutter/material.dart';
import 'package:untitled1/student_data_model.dart';
class StudentDataTile extends StatelessWidget {
  const StudentDataTile({Key? key, required this.data}) : super(key: key);

  final StudentDataModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name),
      subtitle: Text(data.phoneNumber),
      trailing: Text('ID: ${data.id}'),
    );
  }
}