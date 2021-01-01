import 'package:chuck_norris/core/error/failure.dart';
import 'package:flutter/material.dart';

class ErrorDisplay extends StatelessWidget {
  final Failure failure;
  const ErrorDisplay({Key key, @required this.failure}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: SingleChildScrollView(
          child: Text(
            failure.toString(), // TODO failure message
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
