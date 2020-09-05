import 'package:flutter/material.dart';
import 'package:vk_template_app/styles/colors.dart';
import 'package:vk_template_app/styles/fonts.dart';
import 'package:vk_template_app/components/button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Сообщения'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: BLACK, fontFamily: DEFAULT_FONT_FAMILY)),
        backgroundColor: WHITE,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            VKButton('Редактировать',(){}),
          ],
        ),
      ),
      backgroundColor: WHITE, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
