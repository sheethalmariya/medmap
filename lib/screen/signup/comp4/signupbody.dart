import 'package:flutter/material.dart';
import 'package:medmap/screen/login/login.dart';

class signupbody extends StatefulWidget {
  const signupbody({Key? key}) : super(key: key);

  @override
  State<signupbody> createState() => _signupbodyState();
}

class _signupbodyState extends State<signupbody> {
  TextEditingController uname = new TextEditingController();
  TextEditingController password1 = new TextEditingController();
  TextEditingController password2 = new TextEditingController();
  bool _passwordVisible1 = false;
  bool _passwordVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,height: 50,),
              Text("Sign up",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,height: 30,),
              Text("Name",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Manjari"),),
            ],
          ),
          Container(
            width: 290,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),border: Border.all(color: Colors.black12)),
            child: TextField(controller: uname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              cursorColor: Colors.black,cursorWidth: 1,
              decoration: InputDecoration(
                border: InputBorder.none,counterText: "",
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,height: 30,),
              Text("Enter Password",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Manjari"
              ),),
            ],
          ),
          Container(
            width: 290,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),border: Border.all(color: Colors.black12)),
            padding: EdgeInsets.only(left: 5),
            child: TextFormField(

              obscureText: !_passwordVisible1,controller: password1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              maxLength: 8,cursorColor: Colors.black,cursorWidth: 1,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: Colors.black,size: 20,),
                suffixIcon: InkWell(
                  onTap: (){
                    setState(() {
                      _passwordVisible1 = !_passwordVisible1;
                    });

                  },
                  child: Icon(Icons.remove_red_eye,color: Colors.black54,size: 20,),

                ),
                border: InputBorder.none,counterText: "",
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,height: 30,),
              Text("Re-enter Password",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Manjari"
              ),),
            ],
          ),
          Container(
            width: 290,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),border: Border.all(color: Colors.black12)),
            padding: EdgeInsets.only(left: 5),
            child: TextFormField(

              obscureText: !_passwordVisible2,controller: password2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              maxLength: 8,cursorColor: Colors.black,cursorWidth: 1,
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color: Colors.black,size: 20,),
                suffixIcon: InkWell(
                  onTap: (){
                    setState(() {
                      _passwordVisible2 = !_passwordVisible2;
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

                //Navigator.push(context, MaterialPageRoute(builder: (context) => verify(),),);

              },
              child: Text("Sign up",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.normal),),
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
          Text("Have an account?",style: TextStyle(fontSize: 16,color: Colors.black54),),
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
