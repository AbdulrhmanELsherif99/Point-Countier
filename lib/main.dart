import 'package:flutter/material.dart';

void main() {
  runApp(Countier());
}

class Countier extends StatefulWidget {
  const Countier({super.key});

  @override
  State<Countier> createState() => _CountierState();
}

class _CountierState extends State<Countier> {
  int TeamAPoint = 0;
  int TeamBPoint = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 210, 234),
          title: Text(
            'Countier Point',
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 1, 1),
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$TeamAPoint',
                      style: TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamAPoint++;
                        });
                        print(TeamAPoint);
                      },
                      child: Text('Add 1 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamAPoint = TeamAPoint + 2;
                        });
                        print(TeamAPoint);
                      },
                      child: Text('Add 2 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamAPoint = TeamAPoint + 3;
                        });
                        print(TeamAPoint);
                      },
                      child: Text('Add 3 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 330,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B ',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '$TeamBPoint',
                      style: TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamBPoint++;
                        });
                        print(TeamBPoint);
                      },
                      child: Text('Add 1 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamBPoint = TeamBPoint + 2;
                        });
                        print(TeamBPoint);
                      },
                      child: Text('Add 2 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          TeamBPoint = TeamBPoint + 3;
                        });
                        print(TeamBPoint);
                      },
                      child: Text('Add 3 Point'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 210, 234),
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(flex: 4),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  TeamAPoint = 0;
                  TeamBPoint = 0;
                });
                print(TeamAPoint);
                print(TeamBPoint);
              },
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
                backgroundColor: const Color.fromARGB(255, 22, 210, 234),
                minimumSize: Size(150, 50),
              ),
            ),
            Spacer(flex: 12),
          ],
        ),
      ),
    );
  }
}
