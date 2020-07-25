import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            buildSizedBoxWithHeight(80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                buildSizedBoxWithHeight(16.0),
                Text('SHRINE'),
              ],
            ),
            buildSizedBoxWithHeight(120),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            buildTextField("Username", _usernameController),
            buildTextField("Password", _passwordController),

            ButtonBar(
              children: <Widget>[
                buildFlatButton("CANCEL", () {
                  clearTexts([_usernameController, _passwordController]);
                }),
                buildRaisedButton("NEXT", () {
                  Navigator.pop(context);
                })
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBoxWithHeight(double value) => SizedBox(height: value);
  TextField buildTextField(String text, TextEditingController controller) =>
      TextField(
        decoration: InputDecoration(filled: true, labelText: text),
        controller: controller,
      );

  FlatButton buildFlatButton(String text, [void Function() onPressed]) {
    return FlatButton(child: Text(text), onPressed: onPressed);
  }

  RaisedButton buildRaisedButton(String text, [void Function() onPressed]) {
    return RaisedButton(child: Text(text), onPressed: onPressed);
  }

  clearTexts(List<TextEditingController> controllers) {
    controllers.forEach((controller) {
      controller.clear();
    });
  }
}

// TODO: Add AccentColorOverride (103)
