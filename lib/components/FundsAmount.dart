import 'package:flutter/material.dart';

EdgeInsets defInsest = EdgeInsets.all(20);

class FundsAmount extends StatelessWidget {
  @override

  final bool isOpened;

  const FundsAmount({Key key, this.isOpened}) : super(key: key);

  Widget build(context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 400),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: defInsest,
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