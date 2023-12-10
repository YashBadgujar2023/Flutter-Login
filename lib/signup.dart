import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatelessWidget {
  var Name = TextEditingController();
  var emailText = TextEditingController();
  var passwordtext = TextEditingController();
  var phonetext = TextEditingController();
  static const String keyname='';
  static const String keyemail='';
  static const String keypassword="";
  static const String keyphone="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle_rounded,color: Colors.blueAccent,size: 40,),
        title: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
      ),
      body: Center(
        child: Container(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Icon(Icons.account_box_rounded,color: Colors.blueAccent,size: 130,),
              ),
              TextField(
                controller:Name,
                decoration: InputDecoration(
                    label: const Text('Name'),
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 64, 99, 160),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 4,
                        )),
                    ),
              ),
              // SizedBox(height: 40,),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                    label: const Text('Email'),
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 64, 99, 160),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 4,
                        )),
                    prefix: Icon(
                      Icons.email,
                      color: Colors.black,
                    )),
              ),
              TextField(
                controller:phonetext,
                decoration: InputDecoration(
                    label: const Text('Phone number'),
                    hintText: 'Enter Your Phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 64, 99, 160),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 4,
                        )),
                    prefix: Icon(Icons.phone_android_outlined,color: Colors.blueAccent,)
                ),
              ),
              TextField(
                // enabled: false,
                obscureText: true,
                controller: passwordtext,
                decoration: InputDecoration(
                  label: Text('Enter Confirm Password'),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 64, 99, 160),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                        width: 4,
                      )),
                  prefix: Icon(Icons.password,color: Colors.lightBlueAccent,),
                  suffix: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              ElevatedButton(onPressed: () async{
                SharedPreferences pref =await SharedPreferences.getInstance();
                // var pref1 =await SharedPreferences.getInstance();
                // var pref2 =await SharedPreferences.getInstance();
                // var pref3 =await SharedPreferences.getInstance();
                pref.setString(keyname,Name.text.toString());
                pref.setString(keyemail,emailText.toString());
                pref.setString(keypassword,passwordtext.text.toString());
                pref.setString(keyphone,phonetext.text.toString());
                print('$keyname');
                // Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
              },
                  child:Text('Confirm')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
