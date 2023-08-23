import 'package:flutter/material.dart';
import 'package:flutter_basic_widget_exercise/core.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = '';
  String password = '';

  Future doLogin() async {
    if (email == 'andre' && password == '123456') {
      Get.to(const EmployeeDashboardView());
      return;
    } else if (email == 'melisa' && password == '654321') {
      Get.to(const HrDashboardView());
      return;
    } else {
      await showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Gagal login, wrong username or password!'),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Ok"),
              ),
            ],
          );
        },
      );
    }
  }
}
