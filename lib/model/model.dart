import 'package:flutter/material.dart';
import 'package:piseth_phon_shop/screen/categary.dart';

class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Categary()),
          );
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}