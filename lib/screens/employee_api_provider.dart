import 'package:flutter/cupertino.dart';
import 'package:life_in_the_uk/models/employee_model.dart';
import 'package:life_in_the_uk/screens/db_provider.dart';
import 'package:dio/dio.dart';

class EmployeeApiProvider {
  Future<List<Employee>> getAllEmployees() async {
    var url = "url";
    Response response = await Dio().get(url);
    //debugPrint(response);

    return employeeFromJson(response.data).map((employee) {
      print('Inserting $employee');
      DBProvider.db.createEmployee(employee);
    }).toList();
  }
}