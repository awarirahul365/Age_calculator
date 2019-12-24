import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyHomepage(),
      theme: ThemeData(
        primaryColor: Colors.green,
      ),

    );
  }
}
class MyHomepage extends StatefulWidget{

  _MyHomePageSt createState()=>new _MyHomePageSt();
}

class _MyHomePageSt extends State<MyHomepage>{
  @override
  double age=0.00;
  var syear;
  var t;
  int k;
  
  void _showp(){
    showDatePicker(context: context,firstDate: new DateTime(1800),initialDate: new DateTime(2019),lastDate:new DateTime.now()).then((DateTime d){
      setState(() {
        syear=d.year;
        calage();
      });
    });
  }
  void calage(){
    setState(() {
      age=(2019-syear).toDouble();
      
    });
    if(age>0 && age<=10)
      {
        t="You are Kid";
        k=1;
      }
    else if(age>11 && age<=24){
      t="You are Student";
      k=2;
    }
    else if(age>25 && age<=60){
      t="You are working";
      k=3;
    }
    else if(age>61 && age<=110){
      t="Retired";
      k=4;
    }
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("AGE CALCULATOR",style: TextStyle(color: Colors.red),
      ),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: Text("CLICK ME FOR AGE",style: TextStyle(color: Colors.green),),
              onPressed: (){
                _showp();
              },
            ),
            new Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            new Text("Your Age is ${age.toStringAsFixed(0)}",style:TextStyle(color: Colors.red,fontSize: 20.0)),
            new Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            new Text("${t}",style: TextStyle(color: Colors.red,fontSize: 20.0),),
            new Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            new CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("images/test1${k}.jpg"),
            )
            
          ],
        ),

      ),
    );
  }

}

