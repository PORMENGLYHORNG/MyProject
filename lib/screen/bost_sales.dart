import 'package:flutter/material.dart';
import 'package:piseth_phon_shop/screen/welcom_screen.dart';

class BostSales extends StatefulWidget {
  const BostSales({super.key});

  @override
  State<BostSales> createState() => _BostSalesState();
}

class _BostSalesState extends State<BostSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          
          child: Text("Bost Sales"),
        ),
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomScreen()),
                      );
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
