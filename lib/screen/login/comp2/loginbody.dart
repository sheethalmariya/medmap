import 'package:flutter/material.dart';
import 'package:medmap/screen/Home/Home.dart';
import 'package:medmap/screen/signup/signup.dart';

class loginbody extends StatefulWidget {
  const loginbody({Key? key}) : super(key: key);

  @override
  State<loginbody> createState() => _loginbodyState();
}

class _loginbodyState extends State<loginbody> {
  TextEditingController phone=TextEditingController();
  TextEditingController password=TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,height: 50,),
              Text("Log in",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,height: 30,),
              Text("Phone number",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Manjari"),),
            ],
          ),
          Container(
            width: 290,
            height: 50,


            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),border: Border.all(color: Colors.black12)),
            child: TextField(controller: phone,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              maxLength: 10,cursorColor: Colors.black,cursorWidth: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: " +91 ",
                prefixStyle: TextStyle(fontSize: 20,color: Colors.black45),

                border: InputBorder.none,counterText: "",
              ),
          ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,height: 30,),
              Text("Password",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Manjari"
              ),),
      ],
    ),
              Container(
                width: 290,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),border: Border.all(color: Colors.black12)),
                padding: EdgeInsets.only(left: 5),
                child: TextFormField(

                  obscureText: !_passwordVisible,controller: password,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  maxLength: 8,cursorColor: Colors.black,cursorWidth: 1,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock,color: Colors.black,size: 20,),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });

                      },
                        child: Icon(Icons.remove_red_eye,color: Colors.black54,size: 20,),

                    ),
                    border: InputBorder.none,counterText: "",
                  ),
                ),
              ),
          SizedBox(height: 80,),
          Container(
            width: 150,
            height: 45,
            margin: EdgeInsets.all(20),

            child: ElevatedButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),);

              },
              child: Text("Log in",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.normal),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
            ),
          ),
          SizedBox(height: 30,),
          Divider(
            height: 70,
            indent: 30,
            endIndent: 30,
            color: Colors.black45,
          ),
          Text("Don't have an account?",style: TextStyle(fontSize: 16,color: Colors.black54),),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),),);
              },
              child: Text("Sign up",style: TextStyle(
                decoration: TextDecoration.underline,fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),))



        ],

      ),
    );
  }
}
