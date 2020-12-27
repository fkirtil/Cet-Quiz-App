import 'package:quiz_app/Screens/QuizPage.dart';
import 'package:quiz_app/Screens/QuizPage_2.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
void gotoQuizPage_2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage_2()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cet Quiz',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Texturina',
                                    fontWeight: FontWeight.bold,
                                  ),
                    ),
                      backgroundColor: Colors.teal,
                ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home.jpg'),
                      fit: BoxFit.fill
                  ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'Başarılar Dilerim..',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                gotoQuizPage(context);
              },
              child: Text('  Başkentler  ',
                          style: TextStyle(
                          fontFamily: 'Texturina',
                          fontSize: 25,
                        ),
                      ),
              color: Colors.lightGreen,
                    ),
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizPage_2(context);
            },
            child: Text('Flutter Sözlü',
                        style: TextStyle(
                          fontFamily: 'Texturina',
                          fontSize: 25,
                        ),
            ),
            color: Colors.lightGreen,
          ),

        ],
      ),
    );
  }
}