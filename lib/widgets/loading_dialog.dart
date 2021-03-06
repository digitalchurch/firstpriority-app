import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  static Future<void> show({
    @required BuildContext context,
    Future<dynamic> Function() future,
  }) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => LoadingDialog(),
    );

    if (future != null) {
      await future().whenComplete(() => Navigator.of(context).pop());
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SimpleDialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        children: [
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
