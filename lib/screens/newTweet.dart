import 'package:flutter/material.dart';

class newTweetPage extends StatefulWidget {
  newTweetPage();

  @override
  newTweetPageState createState() {
    return newTweetPageState();
  }
}

class newTweetPageState extends State<newTweetPage> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => Navigator.maybePop(context),
      ),
//      title: Text('Editar perfil'),
    ),
    ),);
  }

}
