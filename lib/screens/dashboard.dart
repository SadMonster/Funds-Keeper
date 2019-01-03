import 'package:flutter/material.dart';

import '../components/FundsAmount.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'temp',
            child: FundsAmount(isOpened: false,),
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/detailed'),
        child: IconButton(
          icon: Icon(Icons.add, color: Colors.white,),
        ),
      ),
    );
  }
}
