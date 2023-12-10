import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
class home extends StatefulWidget {

  @override
  State<StatefulWidget> createState()=>homeState();
}
  class homeState extends State<home> {
    late var namevalue="";
    late var emailvalue="";
    late var passwordvalue="";
    late var phonevalue="";

    @override
    void initState() {
      super.initState();
      setState(() {
        getvalue();
      });
    }

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          children: [
            Text('name=$namevalue'),
            Text('email=$emailvalue'),
            Text('password=$passwordvalue'),
            Text('phone=$phonevalue'),
          ],
        ),
      );
    }


    void getvalue() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var getname = prefs.getString(signup.keyname);
      var getemail = prefs.getString(signup.keyemail);
      var getpassword = prefs.getString(signup.keypassword);
      var getphone = prefs.getString(signup.keyphone);

      namevalue = getname ?? "no";
      emailvalue = getemail ?? "no";
      passwordvalue = getpassword ?? "no";
      phonevalue = getphone ?? "no";
    }
  }

