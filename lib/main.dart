import 'package:flutter/material.dart';
import 'package:flutter_demo/components/buttonWithText.dart';
import 'package:flutter_demo/routes/layoutScreen.dart';
import 'package:flutter_demo/routes/listAndGridsScreen.dart';
import 'package:flutter_demo/routes/testRoutes/firstRoute.dart';
import 'package:flutter_demo/routes/testRoutes/secondRoute.dart';
import 'package:flutter_demo/routes/testRoutes/stackRoute.dart';

void main() async {
  runApp(const MyApp());
}

const List<Widget> tabsList = [
  Tab(icon: ButtonWithText(label: 'Routes',icon: Icons.house, color: Colors.grey),),
  Tab(icon: ButtonWithText(label: 'Layout',icon:Icons.face_3_sharp, color: Colors.grey),),
  Tab(icon: Icon(Icons.motorcycle),),
  Tab(icon: Icon(Icons.view_headline_rounded),),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: <String, WidgetBuilder> {
        '/first': (context) => const FirstRoute(),
        '/second': (context) => const SecontRoute()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DefaultTabController(length: tabsList.length, child: const MyHomePage(title: 'navigation and routes')) 
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(title: title);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottom:
          const TabBar(
            tabs:tabsList
          )
        ,
      ),
      body: TabBarView(
        children: 
        [
        Center(
            child: 
            Padding(padding: EdgeInsets.all(30),
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed:() => Navigator.pushNamed(context, '/first'), child: Text('Primeria navegacao')),
                  ElevatedButton(onPressed:()=> Navigator.pushNamed(context, '/second'), child: Text('Segunda navegacao')),
                  ElevatedButton(onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (contextS) => const Stackroute())),child:Text('Stack navegation'))
                ],
              )
            )
          ),
          LayoutScreen(),
          const ListAndGridsScreen(),
          Icon(Icons.motorcycle),

        ]
        )

    );
  }
}
