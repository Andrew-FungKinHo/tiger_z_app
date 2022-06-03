import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.done),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            width: 300,
            height: 300,
            image: AssetImage('assets/images/Congrats.png'),
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'HKD 15.50',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Used 1550 Health Power',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Image(
            width: 300,
            height: 300,
            image: AssetImage('assets/images/money.png'),
          ),
          ElevatedButton(
            child: Text(
              'View Saving',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              print('Pressed');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FinalPage(),
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
