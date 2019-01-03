import 'package:flutter/material.dart';

class FundsAmount extends StatelessWidget {
  @override

  final bool isOpened;

  const FundsAmount({Key key, this.isOpened}) : super(key: key);

  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: this.isOpened ? MediaQuery.of(context).size.height - 80 : 300,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text('Funds Amount'),
              Text('HERE'),
              !this.isOpened ? RaisedButton(
                child: Text('Show details'),
                onPressed: () => Navigator.pushNamed(context, '/detailed'),
              ) : Text('opened'),
            ],
          ),
        ),
      ),
    );
  }
}