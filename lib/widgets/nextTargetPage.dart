import 'package:flutter/material.dart';
import 'package:tiger_z_app/widgets/Progress.dart';
import 'package:tiger_z_app/widgets/congrats.dart';

class nextTargetPage extends StatefulWidget {
  const nextTargetPage({Key? key}) : super(key: key);

  @override
  State<nextTargetPage> createState() => _nextTargetPageState();
}

class _nextTargetPageState extends State<nextTargetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Next Target'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image(
          width: 200,
          height: 200,
          image: AssetImage('assets/images/medal.png'),
        ),
        Center(
          child: Text(
            'Next Spending Target',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Center(
          child: Text(
            'You are currently on Silver 2 rank. Spend 1423 HKD in 10 days to move to gold 2 rank and gain higher daily reward!',
          ),
        ),
        ElevatedButton(
          child: Text(
            'Confirm',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            print('Pressed');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Progress(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
          ),
        ),
      ]),
    );
  }
}
