import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RflutterAlertExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rflutter Alert Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Alert(
              context: context,
              type: AlertType.warning,
              title: "RFLUTTER ALERT",
              desc: "Flutter is awesome.",
              buttons: [
                DialogButton(
                  child: Text(
                    "COOL",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () => Navigator.pop(context),
                  width: 120,
                )
              ],
            ).show();
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}
