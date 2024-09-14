
import 'package:flutter/material.dart';

class verifybody extends StatefulWidget {
  const verifybody({Key? key}) : super(key: key);

  @override
  State<verifybody> createState() => _verifybodyState();
}

class _verifybodyState extends State<verifybody> {

  final TextEditingController otpController = TextEditingController();
  String enteredOTP = '';

  void verifyOTP() {
   if (enteredOTP.length == 4) {
      // Here you can implement your logic for OTP verification
      if (enteredOTP == '1234') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Success'),
              content: Text('OTP verification successful!'),
              actions: <Widget>[
                ElevatedButton(onPressed: () {Navigator.of(context).pop();
                },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text('Close'),),

              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Invalid OTP! Please try again.'),
              actions: <Widget>[
                ElevatedButton(onPressed: () {Navigator.of(context).pop();
                },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
            child: Text('Close'),
                ),


              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter the 4-digit OTP',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                cursorColor: Colors.black,
                autofocus: false,
                decoration: InputDecoration(counterText: " ",
                    focusColor: Colors.black,
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                controller: otpController,
                keyboardType: TextInputType.number,
                maxLengthEnforcement: null,
                maxLength: 4,
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
                onChanged: (value) {
                  setState(() {
                    enteredOTP = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: verifyOTP, child: Text('Verify OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






