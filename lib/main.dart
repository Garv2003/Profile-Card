import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ProfileCard(),
    ));

class ProfileCard extends StatefulWidget {
  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Profile ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      //add two floating action buttons
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                age -= 1;
              });
            },
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                age += 1;
              });
            },
            backgroundColor: Colors.grey[800],
            child: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
                'Name',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Garv',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              const Text(
                'Age',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10.0),
              Text(
                '$age',
                style: const TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text('aggarwalgarv0505@gmail.com',
                      style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1.0,
                          fontSize: 18.0)),
                ],
              ),
              // const SizedBox(height: 30.0),
              // Row(
              //   children: <Widget>[
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(() {
              //           age += 1;
              //         });
              //       },
              //       style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.grey[800]),
              //       child: const Text('Add Age'),
              //     ),
              //     const SizedBox(width: 10.0),
              //     ElevatedButton(
              //       onPressed: () {
              //         setState(() {
              //           age -= 1;
              //         });
              //       },
              //       style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.grey[800]),
              //       child: const Text('Subtract Age'),
              //     ),
              //   ],
              // )
            ],
          )),
    );
  }
}
