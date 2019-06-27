import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
  margin: EdgeInsets.all(10.0),
  height: 60.0,
  width: MediaQuery.of(context).size.width,
  color: Colors.white12,
  child: new Row(
mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
new Container(
  width: 500,
  padding: EdgeInsets.all(8.0),
  margin: EdgeInsets.all(10.0),
  decoration: new BoxDecoration(
    borderRadius: BorderRadius.circular(15.0)
    ,color: Colors.cyan,
  ),
  child: new Text('                                     LOGIN PAGE                            ',
   style: TextStyle(fontSize: 20.0,color: Colors.orange),
  ),
),
],
),
),

new SizedBox(
height: 7.0,
),
new Container(

child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    new Container( 
      width: 700.0,
      height:650.0,//IMAGE CONTAINER
     padding: EdgeInsets.all(7.0),
  margin: EdgeInsets.all(10.0),
child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: 'https://files.brightside.me/files/news/part_2/29255/404705-20e73b8692f013977b75eab5723048a0-900-b4cfdf30c8-1478604969.jpg',
         fit: BoxFit.cover,
         ),
    ),
    new Container( 
       padding: EdgeInsets.all(7.0),
  margin: EdgeInsets.all(10.0),//LOGIN PAGE CONTAINER
width: 370.0,
         height: 600.0,
          decoration: BoxDecoration(
          color: Colors.white,
        ),

child: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
       SizedBox(
        child: FadeInImage.assetNetwork(
        placeholder: 'assets/loading.gif',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1ciDVG11aFIL_9h7HeeK0A-emvOTD38AktUrQbVTf4rxh64oO',
        fit: BoxFit.fill,
        ),
        ), 

          SizedBox(
            height: 50.0,
            ),

          new TextFormField(
           keyboardType: TextInputType.emailAddress,
           
           autofocus: true,
           decoration: InputDecoration(
             hintText: 'Enter Username',
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0) ),
            ),
           ),
       SizedBox(
              height: 25.0,
),
       TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0) ),
              hintText: 'Enter Password'
             ),
             ),

           const SizedBox(height: 30),
              RaisedButton(
              onPressed: () {   
              },
              child: const Text(
              'Login',
               style: TextStyle(fontSize: 20)
               ),
               ),
            ],
            ),
            ),
    ),  
  ],
),
),
      ],       
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
  }
