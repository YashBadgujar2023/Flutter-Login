import 'package:flutter/material.dart';
import 'package:login/Intropage.dart';
import 'package:login/homepage.dart';
import 'package:login/logo.dart';
import 'package:login/signup.dart';
import 'package:login/thirdpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: logo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  var emailText = TextEditingController();
  var passwordtext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Eminence Tech'),
        ),
        body: Center(
          child: newMethod(),
        ));
  }

  Column newMethod() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(Icons.account_circle,size: 100,color: Colors.lightBlueAccent,),
        ),
        Container(
          child: Text('Log in',style: TextStyle(fontSize: 50,color: Colors.lightBlueAccent),),
        ),
        Container(
          width: 300,
          child: TextField(
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
        ),
        Container(
          height: 11,
        ),
        Container(
          width: 300,
          child: TextField(
            // enabled: false,
            obscureText: true,
            controller: passwordtext,
            decoration: InputDecoration(
              label: Text('Password'),
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
                  )),
              suffix: IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Container(height: 14,),
        ElevatedButton(onPressed: () async{
          var sharedpref = await SharedPreferences.getInstance();
          sharedpref.setBool(intropage.keylogin,true);
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>homepage(),));
        }
        , child: Text(
          'Login',style: TextStyle(fontSize: 20),
        ),
          style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 20,right: 20),
          ),
        ),
        SizedBox(height: 100),
        Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            child: Text('Sign Up'),
            onPressed: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>signup()));
              });
            },
          ),
        )
      ],
    );
  }
}
