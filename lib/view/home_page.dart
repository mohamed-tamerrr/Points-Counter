import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
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
                        '${BlocProvider.of<CounterCubit>(context).numberA}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 160,
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
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).increment(
                              buttonNumber: 1,
                              team: 'A',
                            );
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
                              backgroundColor:
                                  Colors.orange,
                              // fixedSize: Size.fromHeight(20),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment(
                                buttonNumber: 2,
                                team: 'A',
                              );
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
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).increment(
                              buttonNumber: 3,
                              team: 'A',
                            );
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
                        '${BlocProvider.of<CounterCubit>(context).numberB}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 160,
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
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).increment(
                              buttonNumber: 1,
                              team: 'B',
                            );
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
                              backgroundColor:
                                  Colors.orange,
                              // fixedSize: Size.fromHeight(20),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(
                                context,
                              ).increment(
                                buttonNumber: 2,
                                team: 'B',
                              );
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
                            BlocProvider.of<CounterCubit>(
                              context,
                            ).increment(
                              buttonNumber: 3,
                              team: 'B',
                            );
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
                    BlocProvider.of<CounterCubit>(
                      context,
                    ).ResetCounter();
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
        );
      },
    );
  }
}
