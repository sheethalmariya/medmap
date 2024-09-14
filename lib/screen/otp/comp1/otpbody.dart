import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medmap/screen/login/login.dart';
import 'package:medmap/screen/verify/verify.dart';

class otpbody extends StatefulWidget {
  const otpbody({Key? key}) : super(key: key);

  @override
  State<otpbody> createState() => _otpbodyState();
}

class _otpbodyState extends State<otpbody> {
  TextEditingController con1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Column(
              children: [
            Center(child: Text("Get Started",style: TextStyle(fontSize: 25,color: Colors.black),)),
            Image.asset("assets/otp.PNG",height: 200),
            ],
            ),

            Column(
            children: [Text("You'll recieve a 4 digit code",style: TextStyle(fontSize: 20),),
             Text("to verify next.",style: TextStyle(fontSize: 20),),
             SizedBox(height: 20),],),
              Container(
               width: 280,
              height: 50,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black12)),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextField(controller: con1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  maxLength: 10,cursorColor: Colors.black,cursorWidth: 1,keyboardType: TextInputType.number,
                 decoration: InputDecoration(border: InputBorder.none,counterText: "",
                     hintText: "Enter your phone",hintStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.black45)),),
              ),
            Container(
              width: 150,
              height: 45,
              margin: EdgeInsets.all(20),

              child: ElevatedButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => verify(),),);

                },
                child: Text("Get OTP",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.normal),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
              ),
            ),
            Divider(
              height: 80,
              indent: 30,
              endIndent: 30,
              color: Colors.black45,
            ),
            Text("Already have an account?",style: TextStyle(fontSize: 16,color: Colors.black54),),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => login(),),);
              },
                child: Text("Log in",style: TextStyle(
                  decoration: TextDecoration.underline,fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),))




          ],
        ),
    );
  }
}
