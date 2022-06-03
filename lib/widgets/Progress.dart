import 'package:flutter/material.dart';
import 'package:tiger_z_app/widgets/congrats.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("View Today's Progress"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 200,
            height: 200,
            image: AssetImage('assets/images/progress.png'),
          ),
          Column(
            children: [
              Center(
                child: Text(
                  "Today's reward:",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "10 HKD Cashback",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Center(child: Text("9,750 / 15,000 steps")),
          Center(child: Text("5250 steps left to get daily reward")),
          ElevatedButton(
            child: Text(
              'Back',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              print('Pressed');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Congrats(),
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
        ],
      ),
    );
  }
}
