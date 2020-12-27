import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  String get resultPhrase {
    String resultText;
    if (score >= 20) {
      resultText = 'Tebrikler Puanınız';
      print(score);}
    else {
      resultText = 'Sıkı çalışmalısın : )';
      print(score);
    }

    return  resultText;

  }
  String _backgroundImage;
  String _setImage(){
    String resultText;
    if (score >= 20) {
      _backgroundImage = 'assets/succes.jpg';

    }
    else {

      _backgroundImage = 'assets/fail.jpg';
    }
    print("_backgroundImage: $_backgroundImage");
    return _backgroundImage;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(' Sonuç ' ,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Texturina',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: 500,
        height:500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: CircleAvatar(
                backgroundImage: new AssetImage(_setImage()),
                radius: 100.0,
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: CircleAvatar(
                child: Image(
                    width: 200,
                    height: 200,
                    image: new AssetImage(_setImage()),
                ),
                radius: 80.0,
              ),
            ),*/
            /*SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(

                child: Image(
                    width: 200,
                    height: 200,
                    image: new AssetImage(_setImage())
                ),
              ),
            ),*/
            SizedBox(
              width:30,
              height:30,
            ),
            Text( resultPhrase, textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontFamily: 'Texturina',
              ),
            ),
            SizedBox(
              width:20,
              height:20,
            ),
            Text(
              '$score', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50,  fontFamily: 'NerkoOne', fontWeight: FontWeight.w900),
            ),

          ],
        ),
      ),
    );
  }


}



/*
class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sonuç '),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/fail.jpg'),
              radius: 80.0,
            ),
          ),
          Container(
            child: Center(
            child: Text(
              'Tebrikler Puanınız',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}

 */