import 'package:flutter/material.dart';

class Errortext extends StatelessWidget {
  const Errortext({super.key,required this.error});
  final String error;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}