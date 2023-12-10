import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/homepage.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intropage extends StatelessWidget {
  static const String keylogin="login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Expanded(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.lightBlue,fontSize: 21),
                    children: <TextSpan>[
                      TextSpan(text: "Welcome to "),
                      TextSpan(text: "Eminence Tech",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31,color: Colors.deepPurple))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(onPressed: () async{
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage() ));
                var sharedpref= await SharedPreferences.getInstance();

                var islogedin = sharedpref.getBool(keylogin);
                if(islogedin!=null)
                  {
                    if(islogedin)
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>homepage(),));
                      }
                    else{
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage(),));
                    }
                  }
                else{
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHomePage(),));
                }
              },
                  child:Container(width:60,child: Row(children: [Text('login'),Icon(Icons.arrow_forward_ios)],)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
