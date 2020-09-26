import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// EXTERNAL WIDGET
import 'package:deafcycle_app/Utils/InputFields.dart';
import 'package:deafcycle_app/Utils/CircularLogo.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Global Form Key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // AutoValidate To False
  bool _autoValidate = false;

  // Map -> contains the Input Validated Values, values shown in print after submit
  Map<dynamic, dynamic> keyValues = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: GoogleFonts.notoSans(
              fontSize: 26,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Circular Logo
                CircularLogo(),
                // Form
                Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: InputFields(
                    validateInputs: this._validateInputs,
                    addValuesInMap: this._addValuesInMap,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Validate Inputs
  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(keyValues);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  // Add Values In Map
  void _addValuesInMap(String val) {
    keyValues[val] = val;
  }
} // End Of Class

/*
Widget formUI() {
    return Column(
      children: [
        InputTextField(
            label: 'name',
            validate: (String arg) {
              if (arg.length < 2) {
                return 'Enter your name';
              }
            },
            onSave: (String val) {
              keyValues["name"] = val;
            }),
        RawMaterialButton(
          child: Text('submit'),
          onPressed: () {
            _validateInputs();
          },
        )
      ],
    );
  }
*/
