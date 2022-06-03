import 'package:flutter/material.dart';

import 'package:tiger_z_app/widgets/finalPage.dart';

class Congrats extends StatefulWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Health Power'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Cash Redemption (HKD)',
                hintText: '0.00'),
          ),
        ),
        Center(
            child: Text('You now have 1600 Health Power (16.00 HKD) to use.')),
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
        // Image(
        //   width: 200,
        //   height: 200,
        //   image: AssetImage('assets/images/personpoint.png'),
        // ),
      ]),
    );
  }
}
