import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';
import '../controller/employee_dashboard_controller.dart';

class EmployeeDashboardView extends StatefulWidget {
  const EmployeeDashboardView({Key? key}) : super(key: key);

  Widget build(context, EmployeeDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EmployeeDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<EmployeeDashboardView> createState() => EmployeeDashboardController();
}
