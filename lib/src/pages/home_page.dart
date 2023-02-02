import 'package:clone_design_flutter/src/util/emoticons.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      bottomNavigationBar: const CustomMenuOptions(),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi, Johanny!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo[100],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notification_add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Search(),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                //Emoticons
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const <Widget>[
                            Emoticons(emoticon: '😀'),
                            SizedBox(height: 8),
                            Text('Bad', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Emoticons(emoticon: '😋'),
                            SizedBox(height: 8),
                            Text('Fine', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Emoticons(emoticon: '😎'),
                            SizedBox(height: 8),
                            Text('Well', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: const <Widget>[
                            Emoticons(emoticon: '🥸'),
                            SizedBox(height: 8),
                            Text('Excellent',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(25),
            color: Colors.white,
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Ejercises',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(
                        Icons.more_horiz,
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
        ],
      )),
    );
  }
}
