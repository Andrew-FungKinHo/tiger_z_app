import 'package:flutter/material.dart';
import 'package:tiger_z_app/widgets/nextTargetPage.dart';

class convertPage extends StatefulWidget {
  const convertPage({Key? key}) : super(key: key);

  @override
  State<convertPage> createState() => _convertPageState();
}

class _convertPageState extends State<convertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Cash Reward'),
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
          image: AssetImage('assets/images/silvermedal.png'),
        ),
        Center(
          child: Text(
            'Congratulations!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Center(
          child: Text(
            'You are currently on Silver 2 rank. You can enjoy a 5% discount coupon at designated sports merchandise.',
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
                builder: (context) => const nextTargetPage(),
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
