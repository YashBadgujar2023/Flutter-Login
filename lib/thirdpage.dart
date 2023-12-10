import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdpage extends StatelessWidget {
  var count=41;
  var c=41;
  final Icon icn=Icon(Icons.star_border);
  final Icon icn1=Icon(Icons.star);
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Eminence Tech'),
    ),
    body: Expanded(
      child: Column(
        children: [
          Container(
            height: 250,
            color: Colors.black,
            child: Image.asset("assets/image/download.jpg",height: 250,),
          ),
          Expanded(
            child: Container(
              height: 100,
              // color: Colors.blueGrey,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      // color: Colors.black,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Oeschinen Lake Campground',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                            Text('wKandersteg, Switzerland',style: TextStyle(color: Colors.grey[500],),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.blue,
                      child: TextButton(child: icn1,
                        onPressed: (){
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.orange,
                      child: Text('$count',style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              // color: Colors.lightGreenAccent,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.lime,
                      child: TextButton(
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.call,color: Colors.lightBlue,size: 40,),
                            Text('CALL',style: TextStyle(fontSize: 18,color: Colors.lightBlue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.deepOrange,
                      child: TextButton(
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.near_me,color: Colors.lightBlue,size: 40,),
                            Text('ROUTE',style: TextStyle(fontSize: 18,color: Colors.lightBlue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      child: TextButton(
                        onPressed: (){},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.share,color: Colors.lightBlue,size: 40,),
                            Text('SHARE',style: TextStyle(fontSize: 18,color: Colors.lightBlue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                  'Alps. Situated 1,578 meters above sea level, it is one of the '
                  'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                  'half-hour walk through pastures and pine forest, leads you to the '
                  'lake, which warms to 20 degrees Celsius in the summer. Activities '
                  'enjoyed here include rowing, and riding the summer toboggan run.'),
            ),
          ),
        ],
      ),
    ),
  );
  }
}
