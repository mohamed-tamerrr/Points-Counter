import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() =>
      _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int numberA = 0;
  int numberB = 0;
  double getFontSize(int number) {
    if (number < 10) return 160;
    if (number < 100) return 140;
    if (number < 1000) return 100;
    return 100; // For numbers with 4+ digits
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Color(0xfffef7ff),
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$numberA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(numberA),
                      ),
                    ),
                    SizedBox(
                      width: 159,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // fixedSize: Size.fromHeight(20),
                        ),
                        onPressed: () {
                          numberA++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: SizedBox(
                        width: 159,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // fixedSize: Size.fromHeight(20),
                          ),
                          onPressed: () {
                            numberA += 2;
                            setState(() {});
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 159,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // fixedSize: Size.fromHeight(20),
                        ),
                        onPressed: () {
                          numberA += 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                  height: 500,
                  child: VerticalDivider(
                    indent: 40,
                    endIndent: 40,
                    thickness: 1.2,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$numberB',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(numberB),
                      ),
                    ),
                    SizedBox(
                      width: 159,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // fixedSize: Size.fromHeight(20),
                        ),
                        onPressed: () {
                          numberB++;
                          setState(() {});
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: SizedBox(
                        width: 159,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            // fixedSize: Size.fromHeight(20),
                          ),
                          onPressed: () {
                            numberB += 2;
                            setState(() {});
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 159,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // fixedSize: Size.fromHeight(20),
                        ),
                        onPressed: () {
                          numberB += 3;
                          setState(() {});
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              width: 159,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  numberB = 0;
                  numberA = 0;
                  setState(() {});
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
