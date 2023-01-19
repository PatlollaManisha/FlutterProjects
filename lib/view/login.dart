import 'package:flutter/material.dart';
import 'package:flutter_project/utils/CustomAlerts/CustomAlert_1.dart';
import 'package:flutter_project/utils/ReusableWidgets/button.dart';
import 'package:flutter_project/utils/Routes/appRoutes.dart';
import '../utils/ReusableWidgets/textformfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _mobile = TextEditingController();
  TextEditingController _Password = TextEditingController();
  FocusScopeNode _node = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableTextformfield(
              controller: _mobile,
              hintText: 'Mobile Number',
              TextLength: 10,
              keyboardInputType: TextInputType.phone,
              obscureText: false,
              node: _node,
              onEditingComplete: () {
                _node.nextFocus();
              },
              action: TextInputAction.next,
              errorMessage: 'Please Enter Mobile Number',
            ),
            ReusableTextformfield(
                hintText: "Password",
                controller: _Password,
                keyboardInputType: TextInputType.visiblePassword,
                obscureText: false,
                node: _node,
                action: TextInputAction.done,
                onEditingComplete: () {
                  _node.nextFocus();
                },
                errorMessage: "Please Enter Password"),
            ReusableButton(
              ButtonText: "Login",
              onPressed: () {
                if (validateInputs()) {
                  print("Success");
                  Navigator.pushNamed(context, AppRoutes.mpin);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  validateInputs() {
    if (_mobile.text.isEmpty) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertWithSingleButton(
              title: "Mobile Number Empty",
              descriptions:
                  "Mobile Number cannot be empty,Please Enter Mobile Number",
              Buttontext: "OK",
              bgColor: Colors.red[900],
              Img: Image.asset(
                "assets/closeBgicon.png",
                fit: BoxFit.fill,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          });
      return false;
    } else if (_mobile.text.length < 10) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertWithSingleButton(
              title: "MOBILE NUMBER INVALID",
              descriptions: "Please Enter Valid Mobile Number",
              Buttontext: "OK",
              Img: Image.asset("assets/warningblue.png"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          });
      return false;
    } else {
      return true;
    }
  }
}
