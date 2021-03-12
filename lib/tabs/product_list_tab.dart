import 'package:flutter/cupertino.dart';

class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Store'),
          )
        ],
      ),
    );
  }
}
