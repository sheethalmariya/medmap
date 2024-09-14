import 'package:flutter/material.dart';

class searchbody extends StatelessWidget {
  const searchbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(30)),
        hintText: "Enter any keyword",
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.search_outlined,color: Colors.black,),
            )),

      ),


    );
  }
}
