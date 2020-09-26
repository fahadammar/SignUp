import 'package:flutter/material.dart';

// EXTERNAL MODULES
import 'package:deafcycle_app/Widget/SignUp.dart';

void main() {
  runApp(DeafCycle());
}

class DeafCycle extends StatefulWidget {
  @override
  _DeafCycleState createState() => _DeafCycleState();
}

class _DeafCycleState extends State<DeafCycle> {
  @override
  Widget build(BuildContext context) {
    return SignUp();
  }
}
