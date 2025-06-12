import 'package:flutter/material.dart';
import 'package:piseth_phon_shop/screen/welcom_screen.dart';

class AllItem extends StatefulWidget {
  const AllItem({super.key});

  @override
  State<AllItem> createState() => _AllItemState();
}

class _AllItemState extends State<AllItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Text("All Item"),
        ),
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => WelcomScreen()),
         );
        }, 
        icon: Icon(Icons.arrow_back_ios)
        ),
      ),
    );
  }
}