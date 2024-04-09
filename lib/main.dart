// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballApp());
}

class BasketballApp extends StatelessWidget {
  const BasketballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: Text('Points Counter'),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.blueGrey[700],
            child: Column(
              children: [
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).countA}',
                          style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        ElevatedButton(
                          // 1 point team A
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 1);
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          // 2 point team A
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          // 3 point team A
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'A', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                      child: const VerticalDivider(
                        thickness: 1,
                        width: 10,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).countB}',
                          style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'B', buttonNumber: 2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrement(team: 'B', buttonNumber: 3);
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(flex: 1),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    int countA = BlocProvider.of<CounterCubit>(context).countA;
                    int countB = BlocProvider.of<CounterCubit>(context).countB;

                    BlocProvider.of<CounterCubit>(context)
                        .TeamIncrement(team: 'A', buttonNumber: -countA);
                    BlocProvider.of<CounterCubit>(context)
                        .TeamIncrement(team: 'B', buttonNumber: -countB);
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        );
      },
    );
  }
}
