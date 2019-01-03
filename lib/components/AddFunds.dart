import 'package:flutter/material.dart';

class AddFunds extends StatelessWidget {
  @override

  // const AddFunds({Key key}) : super(key: key);

  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text('Enter Income:'),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (v) => debugPrint(v),
              ),
              // Checkbox()
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Add'),
                  ),
                  FlatButton(
                    child: Text('Clear'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}