import 'package:flutter/material.dart';
import './gridOutdoor.dart';
import './gridLivRoom.dart';
import './gridBedRoom.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Grid Layout of IoT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin{
  late TabController tabController;

  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
            padding: const EdgeInsets.all(15.0),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Text(
                  'My Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.65),
                    fontFamily: 'Arial',
                    fontSize: 15,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  size: 15,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 24.0),
            child: TabBar(
              isScrollable: true,
              controller: tabController,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.65),
                fontFamily: 'Arial',
              ),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Living Room'),
                Tab(text: 'Outdoors'),
                Tab(text: 'Bedroom'),
                Icon(Icons.more_horiz)
              ]
            )
          ),
          Container(
            width: 350,
            height: 500,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                LivingRoom(),
                Outdoor(),
                BedRoom(),
                Center(
                  child: Text('More Upcoming Apps Soon'),
                )
              ]
            ),
          ),
        ],
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}