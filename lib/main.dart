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
      title: 'Flutter Demo',
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                ///GridView
                Row(
                  children: [
                    Expanded(

                      child: SizedBox(
                        height: 300,
                        child: GridView(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          children: [
                            Container(
                              color: Colors.green,

                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,

                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),

                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                            Container(
                              color: Colors.red,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              color: Colors.green,
                              margin: const EdgeInsets.all(8.0),
                            ),
                            ///
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const[
                     Divider(height: 4.0,),
                  ],
                ),

                ///
                Row(

                  /// GridView count
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 300,

                        child: GridView.count(

                          scrollDirection: Axis.horizontal,
                          crossAxisCount: 2,
                          // Generate 100 widgets that display their index in the List.
                          children: List.generate(30, (index) {
                            return Card(
                              margin: const EdgeInsets.all(8.0),
                              color: Colors.amberAccent,
                              child: Center(
                                child: Text(
                                  'Item $index',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
