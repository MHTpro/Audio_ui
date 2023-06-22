import 'package:flutter/material.dart';

class AudioCategory extends StatefulWidget {
  const AudioCategory({super.key});

  @override
  State<AudioCategory> createState() => _AudioCategoryState();
}

class _AudioCategoryState extends State<AudioCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
          size: 30.0,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Find all your acoustic wonders here",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 40.0,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: const Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 90.0,
                      width: 90.0,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.library_music_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 90.0,
                      width: 262.0,
                      color: Colors.black12,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Music",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 90.0,
                      width: 90.0,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.podcasts,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 90.0,
                      width: 262.0,
                      color: Colors.black12,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Podcasts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 90.0,
                      width: 90.0,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.multitrack_audio_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 90.0,
                      width: 262.0,
                      color: Colors.black12,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Audiobook",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 90.0,
                      width: 90.0,
                      color: Colors.black,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 90.0,
                      width: 262.0,
                      color: Colors.black12,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Recordings",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
