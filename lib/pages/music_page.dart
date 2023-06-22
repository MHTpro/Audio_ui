import 'package:black_and_white/pages/category.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MyMusic",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: SizedBox(
                  height: 200.0,
                  width: 400.0,
                  child: Image.asset(
                    "assets/images/flw.jpg",
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  const SizedBox(
                    height: 200.0,
                    width: 400.0,
                    child: Center(
                      child: Text(
                        '''A child's rhyme stuck in my head\n\nIt said that life is but a dream\nI've spent so many years in question\n\nTo find l've known this all along''',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.white.withOpacity(0.8),
                      width: 400.0,
                      height: 50.0,
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      color: Colors.white.withOpacity(0.8),
                      width: 400.0,
                      height: 50.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Icon(
                    Icons.shuffle,
                    color: Colors.black,
                  ),
                  const Icon(
                    Icons.repeat,
                    color: Colors.black,
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const AudioCategory();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: 5.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      height: 5.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 90.0,
                    bottom: -2.6,
                    child: CircleAvatar(
                      radius: 6.0,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "0:00",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "6:12",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(
                    color: Colors.black12,
                    width: 2.0,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  children: const <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: TableCell(
                            child: Icon(
                              Icons.skip_previous_rounded,
                              size: 40.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: TableCell(
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 30.0,
                              child: Icon(
                                Icons.pause_sharp,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: TableCell(
                            child: Icon(
                              Icons.skip_next,
                              size: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
