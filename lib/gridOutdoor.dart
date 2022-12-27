import 'package:flutter/material.dart';

class Outdoor extends StatefulWidget {
  const Outdoor({super.key});

  @override
  State<Outdoor> createState() => _OutdoorState();
}

class _OutdoorState extends State<Outdoor> with AutomaticKeepAliveClientMixin{
  final List<bool> _selections1 = List.generate(1, (_) => false);
  Color _bulbColor = Colors.black;
  var onOffButton = ['OFF', 'ON'];
  var textIndex1 = 0;

  void toggleLamp(int index) {
    setState(() {
      _selections1[index] = !_selections1[index];
      if (_bulbColor == Colors.black) {
        _bulbColor = Colors.yellow;
      }
      else {
        _bulbColor = Colors.black;
      }
      if (textIndex1 == 0) {
        textIndex1 = textIndex1 + 1;
      }
      else {
        textIndex1 = textIndex1 - 1;
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
                                Icons.lightbulb,
                                size: 30.0,
                                color: _bulbColor,
                              )
                            ],
                            isSelected: _selections1,
                            onPressed: toggleLamp,
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
                            onPressed: toggleLamp,
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
                            'Gate Lamp',
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
        ],
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}