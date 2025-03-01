import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());

  var name='Ali';
  String name1='Ali';
  int a=5;
  print(a);

  var filter = 'Company';
  final String filter1 ='Company';

  String userName= 'Ali';
  String _userID = '40285';

//Integer Counter
  int counter = 0;
  double price =0.0;
  price = 215.00;

  //String
  String defaultMenu ='main';

  //String concatenation
  String combinedName = 'main' + ' ' + 'function';
  String CombinedNameNoPlusSign = 'main' ' ' 'function';


  //String Multi-line
  String multiLineAddress = '''
      I-14/3 Street 36
      Islamabad,46000
  ''';
  print(multiLineAddress) ;




  if(a>=5){
    print(a);

  }

  //List
  List contactlist=['Ali','waqar','Shumail'];
  contactlist.forEach((conc){
    print('conc:$conc');
  });
  //Maps
  Map mapOfFilters = {'1234' : 'Riphah', '1235' : 'rawalpindi', '1236' : 'Pakistan'};
  print(mapOfFilters) ;
  //changing value of third item
  mapOfFilters['1236'] = 'my filter ';
  //print
  print('get filter  with 1236: ${mapOfFilters['1236']}') ;

  //print emoji through a uni-code 1f44c
  Runes myEmoji = Runes("\u{1f44c}") ;
  print(myEmoji);
  print(String. fromCharCodes(myEmoji));

  /*
  //if and if-else
  if ( isClosed ) {
    print ('Store is closed');
  }
  else if( isOpen ) {
    print('store is open' );
  }
 if( isOutOfStock ){
    print('item is out of Stock');
  }
  else {
    print('Nothing Matched');;
  }
*/

  //for -in loop
  List listOfNumbers = [10,20,30];
  for(int number in listOfNumbers){
    print('number : $number');
  }

  //standard for loop
  List listOfFilters =['Company','city','state'];
  for (int i=0;i<listOfFilters.length;i++){
    print('listOfFilters: ${listOfFilters[i]}');
  }








}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterapp',
      theme: ThemeData(
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),


      ),

      home: const MyHomePage(title: 'My App  '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.orange ,
      appBar: AppBar(
        centerTitle: true,

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter' ,
              style: TextStyle(fontSize: 50, color: Colors.white),


            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
