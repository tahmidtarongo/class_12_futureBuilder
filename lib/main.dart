import 'package:flutter/material.dart';
import 'package:untitled1/studentData.dart';
import 'package:untitled1/student_data_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: FutureBuilder<List<StudentDataModel>>(
            future: StudentData().getData(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return ListView.builder(
                    itemCount: snapShot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapShot.data![index].name),
                        subtitle: Text(snapShot.data![index].phoneNumber),
                        trailing: Text('ID: ${snapShot.data![index].id}'),
                      );
                    });
              }else{
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}

class StudentDataTile extends StatelessWidget {
  const StudentDataTile({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  final List<StudentDataModel> dataList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dataList[index].name),
            subtitle: Text(dataList[index].phoneNumber),
            trailing: Text('ID: ${dataList[index].id}'),
          );
        });
  }
}
