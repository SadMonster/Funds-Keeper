import 'package:flutter/material.dart';

import '../components/FundsAmount.dart';

class Detailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Hero(
            tag: 'temp',
            child: FundsAmount(isOpened: true,),
          )
        ],
      )
    );
  }
}