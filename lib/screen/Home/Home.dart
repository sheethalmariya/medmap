import 'package:flutter/material.dart';
import 'package:medmap/screen/Home/comp5/Homebody.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Homebody(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      title: Text("MedMap"),centerTitle: true,titleTextStyle: TextStyle(
            fontFamily: "Jost",fontSize: 25,),),
    );
  }
}
