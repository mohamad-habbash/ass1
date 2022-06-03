import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'palestine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.pink[900],
        title: Text(
              "عاصمة فلسطين",
              style: TextStyle(),
              
              )
          // title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset('images/ps.png' ,height: 250, width: 250,fit: BoxFit.fill,),
          ),
          SizedBox(width: 10,),
          Text("مدينة القدس"),

          Expanded(
            child: Center(
              child: Table(
                defaultColumnWidth: FlexColumnWidth(5),
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Text("القدس"),
                      Text("الاسم"),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("125كم"),
                      Text("المساحة"),
                    ]
                  ),
                    TableRow(
                    children: [
                      Text("358000 نسمة"),
                      Text("السكان"),
                    ]
                  ),
                    TableRow(
                    children: [
                      Text("فلسطين"),
                      Text("الدولة "),
                    ]
                  ),
                    TableRow(
                    children: [
                      Text("محمد رأفت الهباش"),
                      Text("اسم لطالب"),
                    ]
                  ),
                ],

              ),

            
              ),
          ),
        ],
          ),
        
        ),
      );
  }
}
