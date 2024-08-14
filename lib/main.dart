import 'package:flutter/material.dart';

void main() {

  runApp(IntroApp());

}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Flutter Text Styling',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 25,),
            Text('Experiment with text styles',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (ctx){
                return SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('You Clicked the button!'),
                        ),
                      ],
                    ),
                );
              });
            }, child: Text('Click Me')),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to ',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Text(' Flutter!', style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),)
                
              ],
            )



          ],
        ),
      ),
    );
  }
}




