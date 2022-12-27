import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> with AutomaticKeepAliveClientMixin{
  final List<bool> _selections1 = List.generate(1, (_) => false);
  final List<bool> _selections2 = List.generate(1, (_) => false);
  final List<bool> _selections3 = List.generate(1, (_) => false);
  final List<bool> _selections4 = List.generate(1, (_) => false);
  Color _powerColor = Colors.black;
  var onOffButton = ['OFF', 'ON'];

  var textIndex1 = 0;
  var textIndex2 = 0;
  bool imageBool2 = false;
  var textIndex3 = 0;
  bool imageBool3 = false;
  var textIndex4 = 0;

  void toggleWifi(int index) {
    setState(() {
      _selections1[index] = !_selections1[index];
      if (textIndex1 == 0) {
        textIndex1 = textIndex1 + 1;
      }
      else {
        textIndex1 = textIndex1 - 1;
      }
    });
  }

  void toggleTV(int index) {
    setState(() {
      _selections2[index] = !_selections2[index];
      if (textIndex2 == 0) {
        textIndex2 = textIndex2 + 1;
      }
      else {
        textIndex2 = textIndex2 - 1;
      }
      imageBool2 = !imageBool2;
    });
  }

  void toggleAircond(int index) {
    setState(() {
      _selections3[index] = !_selections3[index];
      if (textIndex3 == 0) {
        textIndex3 = textIndex3 + 1;
      }
      else {
        textIndex3 = textIndex3 - 1;
      }
      imageBool3 = !imageBool3;
    });
  }

  void togglePlug(int index) {
    setState(() {
      _selections4[index] = !_selections4[index];
      if (_powerColor == Colors.black) {
        _powerColor = Colors.green;
      }
      else {
        _powerColor = Colors.black;
      }
      if (textIndex4 == 0) {
        textIndex4 = textIndex4 + 1;
      }
      else {
        textIndex4 = textIndex4 - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          // Wi-Fi
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17.0, 17.0, 0, 0),
                          child: ToggleButtons(
                            fillColor: Colors.blue.shade100,
                            children: <Widget>[
                              Icon(
                                Icons.wifi,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections1,
                            onPressed: toggleWifi,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(35.0, 15.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections1,
                            onPressed: toggleWifi,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 26.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Home Wi-Fi',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex1),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // TV
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                          child: Image(
                            width: 60,
                            height: 60,
                            image: AssetImage(imageBool2
                              ? 'asset/tvOn.png'
                              : 'asset/tvOff.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections2,
                            onPressed: toggleTV,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Home TV',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex2),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Air-cond
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                          child: Image(
                            width: 60,
                            height: 60,
                            image: AssetImage(imageBool3
                              ? 'asset/aircondOn.png'
                              : 'asset/aircondOff.png'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections3,
                            onPressed: toggleAircond,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Room AirCond',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex3),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Power
          Container(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container( // deal with row side, left -> right
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(17.0, 17.0, 0, 0),
                          child: ToggleButtons(
                            fillColor: Colors.blue.shade100,
                            children: <Widget>[
                              Icon(
                                Icons.power,
                                size: 30.0,
                                color: _powerColor,
                              )
                            ],
                            isSelected: _selections4,
                            onPressed: togglePlug,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(35.0, 15.0, 0, 0),
                          child: ToggleButtons(
                            borderRadius: BorderRadius.circular(40),
                            children: <Widget>[
                              Icon(
                                Icons.settings_power_rounded,
                                size: 30.0
                              )
                            ],
                            isSelected: _selections4,
                            onPressed: togglePlug,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 26.0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: const Text(
                            'Power Plug',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontFamily: 'Arial', fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 0, 10.0),
                          child: Text(
                            onOffButton.elementAt(textIndex4),
                            style: const TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}