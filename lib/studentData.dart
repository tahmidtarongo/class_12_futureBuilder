import 'package:untitled1/student_data_model.dart';

class StudentData{
  final List<StudentDataModel> _dataList = [
    StudentDataModel(
      name: 'Tahmid',
      id: '123456',
      roll: 1,
      phoneNumber: '345767889995',
      email: 'tahmidtarongo@gmail.com',
    ),
    StudentDataModel(
      name: 'Tahmid',
      id: '123456',
      roll: 1,
      phoneNumber: '345767889995',
      email: 'tahmidtarongo@gmail.com',
    ),
    StudentDataModel(
      name: 'Tahmid',
      id: '123456',
      roll: 1,
      phoneNumber: '345767889995',
      email: 'tahmidtarongo@gmail.com',
    ),
    StudentDataModel(name: 'Kad', id: '12356465723', roll: 2, phoneNumber: '2434645756856', email: 'jhdvvf@gmail.com'),
    StudentDataModel(name: 'Zakir', id: '1312323536457', roll: 3, phoneNumber: '242353467', email: 'ywtdfdfcguy'),
  ];

  Future<List<StudentDataModel>> getData() async {

    await Future.delayed(const Duration(seconds: 5));
    return _dataList;
  }
}