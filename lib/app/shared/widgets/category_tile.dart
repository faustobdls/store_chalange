import 'package:flutter/material.dart';
import '../shared_module.dart';

class CategoryTile extends StatelessWidget {
  final Widget child;

  const CategoryTile({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300],
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: this.child,
      ),
    );
  }
}
