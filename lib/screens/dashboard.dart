import 'package:flutter/material.dart';

import '../components/FundsAmount.dart';
import '../components/AddFunds.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FK Dashboard'),
      ),
      body: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'temp',
            child: FundsAmount(isOpened: false,),
          ),
          AddFunds(),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/settings'),
        child: IconButton(
          icon: Icon(Icons.settings, color: Colors.white,),
        ),
      ),
    );
  }
}
