import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えて下さい。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"), //widget.title
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(_textHeader, style: TextStyle(fontSize: 18,),),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 18,),
              controller: _textEditingController, //TODO
            ),
            Expanded(child: _imageWidget,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _onCLick(),
                child: Text("おしてね", style: TextStyle(fontSize: 18.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onCLick() {
    setState(() {
    //文字
    var inputText = _textEditingController.text;
    _textHeader = "こんにちは、${inputText}さん。";
    //画像
    _imageWidget = Image.asset("assets/images/hello.png");
    });
  }
}
